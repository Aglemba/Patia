package sokoban;

import fr.uga.pddl4j.heuristics.state.StateHeuristic;
import fr.uga.pddl4j.plan.Plan;
import fr.uga.pddl4j.planners.LogLevel;
import fr.uga.pddl4j.planners.Planner;
import fr.uga.pddl4j.planners.PlannerConfiguration;
import fr.uga.pddl4j.planners.statespace.HSP;
import fr.uga.pddl4j.problem.operator.Action;
import org.example.Main;

import java.io.*;
import java.util.List;

public class Agent {
    public static void main(String[] args) throws IOException {
        org.example.Main.main(args);

        try (BufferedReader solution = new BufferedReader(new FileReader("pddl/plan_moves.txt"))){
            String line;
            while ((line = solution.readLine()) != null) {
                System.out.println(line);
            }
        } catch (IOException e) {
            e.printStackTrace();

        }

    }
}
