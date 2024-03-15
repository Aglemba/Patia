package sokoban;
import java.io.*;

public class Agent {
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
