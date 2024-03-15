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
<<<<<<< HEAD
        // The path to the benchmarks directory

        final Boolean isAli = true;
        final String AliPath;

        if(isAli) {
            AliPath = "";
        } else {
            AliPath = "Sokoban/";
        }

        final String benchmarks = AliPath + "pddl/";
        final String tests = AliPath + "config/";
        final String testName = "test3";

        

        PlannerConfiguration config = HSP.getDefaultConfiguration();
        config.setProperty(HSP.DOMAIN_SETTING, benchmarks + "domain.pddl");

        JsonToPddlParser parser = new JsonToPddlParser();
        System.out.println("CHEMINS : " + tests + testName + ".json");
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
=======
        org.example.Main.main(args);

        try (BufferedReader solution = new BufferedReader(new FileReader("pddl/plan_moves.txt"))){
            String line;
            while ((line = solution.readLine()) != null) {
                System.out.println(line);
>>>>>>> 5d2932a (Ajout SokobanSolver)
            }
        } catch (IOException e) {
            e.printStackTrace();
<<<<<<< HEAD
        }
        BufferedWriter out = new BufferedWriter(new FileWriter(AliPath + "pddl/plan_moves.txt"));
        for(char c: solution.toString().toCharArray()) {
            out.write(c);
        }
        out.close();
=======
>>>>>>> 5d2932a (Ajout SokobanSolver)

        }

    }
}
