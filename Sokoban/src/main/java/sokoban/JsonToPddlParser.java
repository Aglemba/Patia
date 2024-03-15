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
    private static StringBuilder headers = new StringBuilder();
    private static StringBuilder objects = new StringBuilder(":objects\n");
    private static StringBuilder inits = new StringBuilder(":init\n");
    private static StringBuilder goals = new StringBuilder(":goal\n(and\n");
    private static StringBuilder output = new StringBuilder();


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
        objects.append(newNode).append(" - node\n");
        return newNode;
    }

    private String generateUniqueBox() {
        String newBox = "box" + nextUniqueBoxValue++;
        objects.append(newBox).append(" - box\n");
        return newBox;
    }

    private String generateUniqueAgent() {
        String newAgent = "agent" + nextUniqueAgentValue++;
        objects.append(newAgent).append(" - agent\n");
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
                    inits.append("(isBoxOnNode ").append(newBox).append(" ").append(currentNode).append(")\n");
                    inits.append("(isNotBoxOnGoal ").append(newBox).append(")\n");
                    inits.append("(isBusyNode ").append(currentNode).append(")\n");
                    goals.append("(isBoxOnGoal ").append(newBox).append(")\n");
                } else if (originalValue == '@') {
                    String newAgent = generateUniqueAgent();
                    inits.append("(isAgentOnNode ").append(newAgent).append(" ").append(currentNode).append(")\n");
                    inits.append("(isNotBusyNode ").append(currentNode).append(")\n");
                }  else if (originalValue == '.') {
                    inits.append("(isGoalNode ").append(currentNode).append(")\n");
                    inits.append("(isNotBusyNode ").append(currentNode).append(")\n");
                } else if (originalValue == '*') {
                    String newBox = generateUniqueBox();
                    inits.append("(isBoxOnNode ").append(newBox).append(" ").append(currentNode).append(")\n");
                    inits.append("(isNotBoxOnGoal ").append(newBox).append(")\n");
                    inits.append("(isGoalNode ").append(currentNode).append(")\n");
                    inits.append("(isBusyNode ").append(currentNode).append(")\n");
                    goals.append("(isBoxOnGoal ").append(newBox).append(")\n");
                } else if (originalValue == '+') {
                    String newAgent = generateUniqueAgent();
                    inits.append("(isAgentOnNode ").append(newAgent).append(" ").append(currentNode).append(")\n");
                    inits.append("(isNotBusyNode ").append(currentNode).append(")\n");
                    inits.append("(isGoalNode ").append(currentNode).append(")\n");
                } else {
                    inits.append("(isNotBusyNode ").append(currentNode).append(")\n");
                }

                if (i > 0) {
                    String aboveNode = uniqueValueMatrix.get(i - 1).get(j);
                    if (aboveNode.startsWith("node")) {
                        inits.append("(isBelow ").append(currentNode).append(" ").append(aboveNode).append(")\n");
                    }
                }

                if (i < numRows - 1) {
                    String belowNode = uniqueValueMatrix.get(i + 1).get(j);
                    if (belowNode.startsWith("node")) {
                        inits.append("(isAbove ").append(currentNode).append(" ").append(belowNode).append(")\n");
                    }
                }

                if (j > 0) {
                    String leftNode = uniqueValueMatrix.get(i).get(j - 1);
                    if (leftNode.startsWith("node")) {
                        inits.append("(isOnRight ").append(currentNode).append(" ").append(leftNode).append(")\n");
                    }
                }

                if (j < numCols - 1) {
                    String rightNode = uniqueValueMatrix.get(i).get(j + 1);
                    if (rightNode.startsWith("node")) {
                        inits.append("(isOnLeft ").append(currentNode).append(" ").append(rightNode).append(")\n");
                    }
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

            headers.append("(define (problem ").append(jsonFileName.replace(".json", "")).append(")\n").append("(:domain domain_sokoban)\n");

            output.append(headers).append("(").append(objects).append(")\n\n").append("(").append(inits).append(")\n\n").append("(").append(goals).append(")\n)\n").append(")");

            try (BufferedWriter writer = new BufferedWriter(new FileWriter(outputFilePath))) {
                writer.write(String.valueOf(output));
                System.out.println("Output saved to: " + outputFilePath);
            } catch (IOException e) {
                e.printStackTrace();
            }

        } catch (IOException | ParseException e) {
            e.printStackTrace();
        }
    }
}
