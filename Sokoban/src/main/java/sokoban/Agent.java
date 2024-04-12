package sokoban;
import java.io.*;

/**
 * This class represents an agent responsible for executing the moves of a Sokoban puzzle solution.
 * It reads the sequence of moves from a text file and performs them.
 */
public class Agent {
    /**
     * Main method to execute the moves of a Sokoban puzzle solution.
     * It reads the sequence of moves from a text file and performs them.
     * @param args Command-line arguments (not used).
     */
    public static void main(String[] args) {
        try (BufferedReader solution = new BufferedReader(new FileReader("pddl/plan_moves.txt"))){
            int character;
            while ((character = solution.read()) != -1) {
                System.out.println((char) character);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
