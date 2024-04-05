import java.util.ArrayList;

public class SatTransition {

    /**
     * A class which will represent our Sat Transitions
     */

    private int step;
    private ArrayList<Integer> positiveEffects;
    private ArrayList<Integer> negativeEffects;
    private ArrayList<Integer> preconditions;

    public SatTransition(int step) {
        this.step = step;
        this.preconditions = new ArrayList<>();
        this.positiveEffects = new ArrayList<>();
        this.negativeEffects = new ArrayList<>();
    }

    public void addPrecondition(int precondition) {
        this.preconditions.add(precondition);
    }

    public void addPositiveEffect(int positiveEffect) {
        this.positiveEffects.add(positiveEffect);
    }

    public void addNegativeEffect(int negativeEffect) {
        this.negativeEffects.add(negativeEffect);
    }

    public int getStep() {
        return step;
    }

    public ArrayList<Integer> getPositiveEffects() {
        return positiveEffects;
    }

    public ArrayList<Integer> getNegativeEffects() {
        return negativeEffects;
    }

    public ArrayList<Integer> getPreconditions() {
        return preconditions;
    }

    @Override
    public String toString() {
        return "SatTransition{" +
                "step=" + step +
                ", positiveEffects=" + positiveEffects +
                ", negativeEffects=" + negativeEffects +
                ", preconditions=" + preconditions +
                '}';
    }
    
}
