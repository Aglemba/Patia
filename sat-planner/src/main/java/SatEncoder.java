import fr.uga.pddl4j.heuristics.state.FastForward;
import fr.uga.pddl4j.heuristics.state.StateHeuristic;
import fr.uga.pddl4j.parser.DefaultParsedProblem;
import fr.uga.pddl4j.parser.RequireKey;
import fr.uga.pddl4j.plan.Plan;
import fr.uga.pddl4j.planners.AbstractPlanner;
import fr.uga.pddl4j.problem.DefaultProblem;
import fr.uga.pddl4j.problem.Fluent;
import fr.uga.pddl4j.problem.Problem;
import fr.uga.pddl4j.problem.State;
import fr.uga.pddl4j.problem.operator.Action;
import fr.uga.pddl4j.util.BitVector;
import org.sat4j.minisat.SolverFactory;
import org.sat4j.specs.ISolver;
import picocli.CommandLine;
import java.util.ArrayList;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

/**
 * The class is a SAT planner. Solves a pddl problem using a SAT solver
 */
@CommandLine.Command(name = "SatEncoder",
        version = "SAT 1.0",
        description = "Solves a specified planning problem using a SAT Solver.",
        sortOptions = false,
        mixinStandardHelpOptions = true,
        headerHeading = "Usage:%n",
        synopsisHeading = "%n",
        descriptionHeading = "%nDescription:%n%n",
        parameterListHeading = "%nParameters:%n",
        optionListHeading = "%nOptions:%n")
public class SatEncoder extends AbstractPlanner {

    private static final Logger LOGGER = LogManager.getLogger(SatEncoder.class.getName());

    /**
     * The weight of the heuristic.
     */
    private double heuristicWeight;

    /**
     * The name of the heuristic used by the planner.
     */
    private StateHeuristic.Name heuristic;

    /**
     * Instantiates the planning problem from a parsed problem.
     *
     * @param problem the problem to instantiate.
     * @return the instantiated planning problem or null if the problem cannot be
     *         instantiated.
     */
    @Override
    public Problem instantiate(DefaultParsedProblem problem) {
        final Problem pb = new DefaultProblem(problem);
        pb.instantiate();
        return pb;
    }

    /**
     * Transform the propositions and actions to SAT variables, mapping them to unique integers.
     * Each proposition has a unique integer associated with its time step.
     * For example: Move(A,B,0) = 1, Move(A,B,1) = 5, etc.
     *
     * @param fluents       List of fluents representing initial states.
     * @param actions       List of actions available.
     * @param timeStep     Number of time steps.
     * @param existingVariables   List of previously created SAT variables.
     * @return              Updated list of SAT variables.
     */
    private ArrayList<SatVariable> createSATVariables(ArrayList<Fluent> fluents, ArrayList<Action> actions, int timeStep,
                                                      ArrayList<SatVariable> existingVariables) {

        // Determine the starting variable name based on existing variables
        int variableName = existingVariables.isEmpty() ? 1 : existingVariables.size() + 1;
        int previousStep = existingVariables.isEmpty() ? 0 : timeStep - 1;
        int numFluents = fluents.size();
        int numActions = actions.size();

        // Iterate over the time steps
        for (int step = previousStep; step < timeStep; step++) {
            // Array to store the indices of fluents relative to the current time step
            int[] fluentVarIndices = new int[numFluents];

            // Transform propositions to SATVariables
            for (int fluentIndex = 0; fluentIndex < numFluents; fluentIndex++) {
                SatVariable propositionVariable = new SatVariable(step, variableName, true);
                fluentVarIndices[fluentIndex] = variableName++;

                // Add the new variable to existingVariables if it doesn't already exist
                if (!existingVariables.contains(propositionVariable)) {
                    existingVariables.add(propositionVariable);
                }
            }

            // Transform actions to SATVariables
            for (Action action : actions) {
                SatVariable actionVariable = new SatVariable(step, variableName, false);
                BitVector positiveEffects = action.getUnconditionalEffect().getPositiveFluents();
                BitVector negativeEffects = action.getUnconditionalEffect().getNegativeFluents();
                BitVector positivePreconditions = action.getPrecondition().getPositiveFluents();

                // Add positive effects to actions
                for (int bit = 0; bit < positiveEffects.length(); bit++) {
                    if (positiveEffects.get(bit)) {
                        actionVariable.addPositiveEffect(fluentVarIndices[bit] + (numFluents + numActions));
                    }
                }

                // Add negative effects to actions
                for (int bit = 0; bit < negativeEffects.length(); bit++) {
                    if (negativeEffects.get(bit)) {
                        actionVariable.addNegativeEffect(fluentVarIndices[bit] + (numFluents + numActions));
                    }
                }

                // Add positive preconditions to actions
                for (int bit = 0; bit < positivePreconditions.length(); bit++) {
                    if (positivePreconditions.get(bit)) {
                        actionVariable.addPrecondition(fluentVarIndices[bit]);
                    }
                }

                // Increment variable name for the next SATVariable
                variableName++;

                // Add the new action variable to existingVariables if it doesn't already exist
                if (!existingVariables.contains(actionVariable)) {
                    existingVariables.add(actionVariable);
                }
            }
        }

        return existingVariables;
    }

    /**
     * Retrieves the initial clauses based on the given problem and list of sat variables.
     *
     * @param problem    The problem instance containing initial state information.
     * @return           A list of initial clauses represented as arrays of integers.
     */
    private ArrayList<int[]> getInitClauses(Problem problem, ArrayList<SatVariable> variables) {
        ArrayList<int[]> initClauses = new ArrayList<>();
        BitVector initState = problem.getInitialState().getPositiveFluents();

        for (SatVariable v : variables) {
            if (v.getStep() == 0 && v.isFluent()) {
                int varName = v.getName();
                int[] clause = { initState.get(varName - 1) ? varName : -varName };
                initClauses.add(clause);
            }
        }

        return initClauses;
    }

    /**
     * Calculates the estimation of the minimum number of steps required to reach the goal state from the initial state.
     *
     * @param problem The problem instance for which the estimation is calculated.
     * @return An estimation of the minimum number of steps required to reach the goal state from the initial state.
     */
    int calculateEstimation(Problem problem) {
        FastForward ff = new FastForward(problem);
        State init = new State(problem.getInitialState());
        return ff.estimate(init, problem.getGoal());
    }

    /**
     * Search a solution plan to a specified domain and problem using SAT.
     *
     * @param problem the problem to solve.
     * @return the plan found or null if no plan was found.
     */
    @Override
    public Plan solve(final Problem problem) {
        LOGGER.info("* Starting SAT search \n");

        boolean solved = false;

        int estimation = calculateEstimation(problem);
        System.out.println(estimation);

        ArrayList<Fluent> fluents = new ArrayList<>(problem.getFluents());
        ArrayList<Action> actions = new ArrayList<>(problem.getActions());
        ArrayList<SatVariable> variables = createSATVariables(fluents, actions, estimation, new ArrayList<>());
        BitVector goalState = problem.getGoal().getPositiveFluents();

        ArrayList<int[]> initClauses = getInitClauses(problem, variables);
        ArrayList<int[]> transitionClauses = new ArrayList<>();
        ArrayList<int[]> goalClauses = new ArrayList<>();

        System.out.println(initClauses);

//        while (!solved) {
//
//            ISolver solver = SolverFactory.newDefault();
//            solver.newVar(1000000);
//            solver.setExpectedNumberOfClauses(500000);
//
//            variables = createSATVariables(fluents, actions, estimation, variables);
//
//        }

        return null;
    }

    /**
     * Sets the weight of the heuristic.
     *
     * @param weight the weight of the heuristic. The weight must be greater than 0.
     * @throws IllegalArgumentException if the weight is strictly less than 0.
     */
    @CommandLine.Option(names = {"-w", "--weight"}, defaultValue = "1.0",
            paramLabel = "<weight>", description = "Set the weight of the heuristic (preset 1.0).")
    public void setHeuristicWeight(final double weight) {
        if (weight <= 0) {
            throw new IllegalArgumentException("Weight <= 0");
        }
        this.heuristicWeight = weight;
    }

    /**
     * Set the name of heuristic used by the planner to the solve a planning problem.
     *
     * @param heuristic the name of the heuristic.
     */
    @CommandLine.Option(names = {"-e", "--heuristic"}, defaultValue = "FAST_FORWARD",
            description = "Set the heuristic : AJUSTED_SUM, AJUSTED_SUM2, AJUSTED_SUM2M, COMBO, "
                    + "MAX, FAST_FORWARD SET_LEVEL, SUM, SUM_MUTEX (preset: FAST_FORWARD)")
    public void setHeuristic(StateHeuristic.Name heuristic) {
        this.heuristic = heuristic;
    }

    /**
     * Returns the name of the heuristic used by the planner to solve a planning problem.
     *
     * @return the name of the heuristic used by the planner to solve a planning problem.
     */
    public final StateHeuristic.Name getHeuristic() {
        return this.heuristic;
    }

    /**
     * Returns the weight of the heuristic.
     *
     * @return the weight of the heuristic.
     */
    public final double getHeuristicWeight() {
        return this.heuristicWeight;
    }

    /**
     * Returns if a specified problem is supported by the planner. Just ADL problem can be solved by this planner.
     *
     * @param problem the problem to test.
     * @return <code>true</code> if the problem is supported <code>false</code> otherwise.
     */
    @Override
    public boolean isSupported(Problem problem) {
        return !problem.getRequirements().contains(RequireKey.ACTION_COSTS)
                && !problem.getRequirements().contains(RequireKey.CONSTRAINTS)
                && !problem.getRequirements().contains(RequireKey.CONTINOUS_EFFECTS)
                && !problem.getRequirements().contains(RequireKey.DERIVED_PREDICATES)
                && !problem.getRequirements().contains(RequireKey.DURATIVE_ACTIONS)
                && !problem.getRequirements().contains(RequireKey.DURATION_INEQUALITIES)
                && !problem.getRequirements().contains(RequireKey.FLUENTS)
                && !problem.getRequirements().contains(RequireKey.GOAL_UTILITIES)
                && !problem.getRequirements().contains(RequireKey.METHOD_CONSTRAINTS)
                && !problem.getRequirements().contains(RequireKey.NUMERIC_FLUENTS)
                && !problem.getRequirements().contains(RequireKey.OBJECT_FLUENTS)
                && !problem.getRequirements().contains(RequireKey.PREFERENCES)
                && !problem.getRequirements().contains(RequireKey.TIMED_INITIAL_LITERALS)
                && !problem.getRequirements().contains(RequireKey.HIERARCHY);
    }

    /**
     * The main method of the <code>SAT</code> planner.
     *
     * @param args the arguments of the command line.
     */
    public static void main(String[] args) {
        try {
            final SatEncoder encoder = new SatEncoder();
            CommandLine cmd = new CommandLine(encoder);
            cmd.execute(args);
        } catch (IllegalArgumentException e) {
            LOGGER.fatal(e.getMessage());
        }
    }
}

