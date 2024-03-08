# Liste des problèmes :
#
# Blocksworld
# Hanoi
# N-Puzzle

# HSP = optimal / FF = sous-optimal
java -cp pddl4j/pddl4j-4.0.0.jar fr.uga.pddl4j.planners.statespace.HSP \
   $1/domain.pddl \
   $1/NotreProbleme$2.pddl

echo -e "Problème $1 : NotreProbleme$2\n"