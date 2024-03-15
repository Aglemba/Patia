package sokoban;

import fr.uga.pddl4j.heuristics.state.StateHeuristic;
import fr.uga.pddl4j.plan.Plan;
import fr.uga.pddl4j.planners.LogLevel;
import fr.uga.pddl4j.planners.Planner;
import fr.uga.pddl4j.planners.PlannerConfiguration;
import fr.uga.pddl4j.planners.statespace.HSP;
import fr.uga.pddl4j.problem.operator.Action;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.List;

public class Agent {
    public static void main(String[] args) throws IOException {
        // The path to the benchmarks directory
        final String benchmarks = "pddl/";
        final String tests = "config/";
        final String testName = "test24";

        PlannerConfiguration config = HSP.getDefaultConfiguration();
        config.setProperty(HSP.DOMAIN_SETTING, benchmarks + "domain.pddl");

        JsonToPddlParser parser = new JsonToPddlParser();

        parser.parse(tests + testName + ".json");

        config.setProperty(HSP.PROBLEM_SETTING, benchmarks + testName + ".pddl");
        config.setProperty(HSP.TIME_OUT_SETTING, 1000);
        config.setProperty(HSP.LOG_LEVEL_SETTING, LogLevel.INFO);
        config.setProperty(HSP.HEURISTIC_SETTING, StateHeuristic.Name.MAX);
        config.setProperty(HSP.WEIGHT_HEURISTIC_SETTING, 1.2);

        Planner planner = Planner.getInstance(Planner.Name.HSP, config);

        StringBuilder solution = new StringBuilder();

        try {
            Plan plan = planner.solve();
            List<Action> actions = plan.actions();

            for (Action a: actions) {
                if (a.getName().contains("right")) {
                    solution.append("R");
                } else if (a.getName().contains("left")) {
                    solution.append("L");
                } else if (a.getName().contains("up")) {
                    solution.append("U");
                } else if (a.getName().contains("down")) {
                    solution.append("D");
                }
            }
        } catch (Exception e) {
            System.out.println("No Plan Found!");
            e.printStackTrace();
        }
        BufferedWriter out = new BufferedWriter(new FileWriter("pddl/plan_moves.txt"));
        for(char c: solution.toString().toCharArray()) {
            out.write(c);
        }
        out.close();

        for (char c : solution.toString().toCharArray()) System.out.println(c);
    }
}
