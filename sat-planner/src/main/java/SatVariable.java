import java.util.ArrayList;

/**
 * A class which will represent our Sat Variables
 */
public class SatVariable {
    private int step;
    private int name;
    private boolean isFluent;

    private ArrayList<Integer> positiveEffects;
    private ArrayList<Integer> negativeEffects;
    private ArrayList<Integer> preconditions;

    public SatVariable(int step, int name, boolean isFluent){
        this.step = step;
        this.name = name;
        this.isFluent = isFluent;
        this.preconditions = new ArrayList<>();
        positiveEffects = new ArrayList<>();
        negativeEffects = new ArrayList<>();
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

    @Override
    public String toString() {
        return "SatVariable{" +
                "step=" + step +
                ", name=" + name +
                ", isFluent=" + isFluent +
                ", positiveEffects=" + positiveEffects +
                ", negativeEffects=" + negativeEffects +
                ", preconditions=" + preconditions +
                '}';
    }
}
