package sokoban;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import java.io.*;
import java.util.ArrayList;

public class JsonToPddlParser {

    private ArrayList<String> nodes = new ArrayList<String>();

    private static int nextUniqueNodeValue = 1;
    private static int nextUniqueBoxValue = 1;
    private static int nextUniqueAgentValue = 1;
    private static String headers = "";
    private static String objects = ":objects\n";

    private static String inits = ":init\n";

    private static String goals = ":goal\n"
            + "(\n"
            + "and\n";

    private static String output = "";

    public ArrayList<ArrayList<String>> createUniqueValueMatrix(ArrayList<ArrayList<Character>> originalMatrix) {
        ArrayList<ArrayList<String>> uniqueValueMatrix = new ArrayList<>();

        for (ArrayList<Character> rowList : originalMatrix) {
            ArrayList<String> uniqueValueRow = new ArrayList<>();

            for (char ch : rowList) {
                String uniqueValue;
                if (ch == '#') {
                    uniqueValue = "#";
                } else {
                    uniqueValue = generateUniqueNode();
                }

                uniqueValueRow.add(uniqueValue);
            }

            uniqueValueMatrix.add(uniqueValueRow);
        }

        return uniqueValueMatrix;
    }

    private String generateUniqueNode() {
        String newNode = "node" + nextUniqueNodeValue++;
        nodes.add(newNode);
        objects += newNode + " - node\n";
        return newNode;
    }

    private String generateUniqueBox() {
        String newBox = "box" + nextUniqueBoxValue++;
        objects += newBox + " - box\n";
        return newBox;
    }

    private String generateUniqueAgent() {
        String newAgent = "agent" + nextUniqueAgentValue++;
        objects += newAgent + " - agent\n";
        return newAgent;
    }

    public ArrayList<ArrayList<Character>> createMatrix(String testIn) {
        String[] rows = testIn.split("\n");

        ArrayList<ArrayList<Character>> matrix = new ArrayList<>();

        for (String row : rows) {
            char[] rowChars = row.toCharArray();
            ArrayList<Character> rowList = new ArrayList<>();
            for (char ch : rowChars) {
                rowList.add(ch);
            }
            matrix.add(rowList);
        }

        return matrix;
    }

    public void generatePddlRules(ArrayList<ArrayList<Character>> originalMatrix, ArrayList<ArrayList<String>> uniqueValueMatrix) {

        int numRows = uniqueValueMatrix.size();

        for (int i = 0; i < numRows; i++) {
            int numCols = uniqueValueMatrix.get(i).size();
            for (int j = 0; j < numCols; j++) {
                String currentNode = uniqueValueMatrix.get(i).get(j);

                if (!(currentNode.startsWith("node"))) {
                    continue;
                }

                char originalValue = originalMatrix.get(i).get(j);

                if (originalValue == '$') {
                    String newBox = generateUniqueBox();
                    inits += "(isBoxOnNode " + newBox + " " + currentNode + ")\n";
                    inits += "(isNotBoxOnGoal " + newBox + ")\n";
                    inits += "(isBusyNode " + currentNode + ")\n";
                    goals += "(isBoxOnGoal " + newBox + ")\n";
                } else if (originalValue == '@') {
                    String newAgent = generateUniqueAgent();
                    inits += "(isAgentOnNode " + newAgent + " " + currentNode + ")\n";
                    inits += "(isNotBusyNode " + currentNode + ")\n";
                }  else if (originalValue == '.') {
                    inits += "(isGoalNode " + currentNode + ")\n";
                    inits += "(isNotBusyNode " + currentNode + ")\n";
                } else if (originalValue == '*') {
                    String newBox = generateUniqueBox();
                    inits += "(isBoxOnNode " + newBox + " " + currentNode + ")\n";
                    inits += "(isNotBoxOnGoal " + newBox + ")\n";
                    inits += "(isGoalNode " + currentNode + ")\n";
                    inits += "(isBusyNode " + currentNode + ")\n";
                    goals += "(isBoxOnGoal " + newBox + ")\n";
                } else if (originalValue == '+') {
                    String newAgent = generateUniqueAgent();
                    inits += "(isAgentOnNode " + newAgent + " " + currentNode + ")\n";
                    inits += "(isNotBusyNode " + currentNode + ")\n";
                    inits += "(isGoalNode " + currentNode + ")\n";
                } else {
                    inits += "(isNotBusyNode " + currentNode + ")\n";
                }

                if (i > 0) {
                    String aboveNode = uniqueValueMatrix.get(i - 1).get(j);
                    if (aboveNode.startsWith("node")) {
                        inits += "(isNodesConnected " + currentNode + " " + aboveNode + ")\n";
                        inits += "(isBelow " + currentNode + " " + aboveNode + ")\n";
                    }
                }

                if (i < numRows - 1) {
                    String belowNode = uniqueValueMatrix.get(i + 1).get(j);
                    if (belowNode.startsWith("node")) {
                        inits += "(isNodesConnected " + currentNode + " " + belowNode + ")\n";
                        inits += "(isAbove " + currentNode + " " + belowNode + ")\n";
                    }
                }

                if (j > 0) {
                    String leftNode = uniqueValueMatrix.get(i).get(j - 1);
                    if (leftNode.startsWith("node")) {
                        inits += "(isNodesConnected " + currentNode + " " + leftNode + ")\n";
                        inits += "(isOnRight " + currentNode + " " + leftNode + ")\n";
                    }
                }

                if (j < numCols - 1) {
                    String rightNode = uniqueValueMatrix.get(i).get(j + 1);
                    if (rightNode.startsWith("node")) {
                        inits += "(isNodesConnected " + currentNode + " " + rightNode + ")\n";
                        inits += "(isOnLeft " + currentNode + " " + rightNode + ")\n";
                    }
                }
            }
        }

        for (int i = 0; i < nodes.size(); i++) {
            for (int j = 0; j < nodes.size(); j++) {
                if (i != j) {
                    String node1 = nodes.get(i);
                    String node2 = nodes.get(j);
                    inits += "(isDifferentNode " + node1 + " " + node2 + ")\n";
                }
            }
        }

    }

    public void parse(String jsonFilePath) {
        try (FileReader reader = new FileReader(jsonFilePath)) {
            JSONParser parser = new JSONParser();
            JSONObject jsonObject = (JSONObject) parser.parse(reader);

            String testIn = (String) jsonObject.get("testIn");

            ArrayList<ArrayList<Character>> originalMatrix = createMatrix(testIn);

            ArrayList<ArrayList<String>> uniqueValueMatrix = createUniqueValueMatrix(originalMatrix);

            generatePddlRules(originalMatrix, uniqueValueMatrix);

            String jsonFileName = new File(jsonFilePath).getName();
            String outputFilePath = "pddl/" + jsonFileName.replace(".json", ".pddl");

            headers = "(define (problem " + jsonFileName.replace(".json", "") + ")\n" +
                    "(:domain domain_sokoban)\n";

            output = headers + "(" + objects + ")\n\n" + "(" + inits + ")\n\n" + "(" + goals + ")\n)\n" + ")";

            try (BufferedWriter writer = new BufferedWriter(new FileWriter(outputFilePath))) {
                writer.write(output);
                System.out.println("Output saved to: " + outputFilePath);
            } catch (IOException e) {
                e.printStackTrace();
            }

        } catch (IOException | ParseException e) {
            e.printStackTrace();
        }
    }
}
