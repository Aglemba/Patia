# Liste des problèmes :
#
# Blocksworld
# Hanoi
# NPuzzle : TODO Presque FINI
# GraphColoring
# PursuitEvasion : TODO

# HSP = optimal / FF = sous-optimal
java -cp pddl4j/pddl4j-4.0.0.jar fr.uga.pddl4j.planners.statespace.HSP \
   $1/domain.pddl \
   $1/NotreProbleme$2.pddl

echo -e "Problème $1 : NotreProbleme$2\n"

# Pour exécuter le fichier NotreProbleme de Blocksworld, tapez la commande suivante :
# ./make.sh Blocksworld

# Pour exécuter le fichier NotreProbleme[NuméroDuProblème] Blocksworld, tapez la commande suivante :
# ./make.sh Blocksworld [NuméroDuProblème]
# ./make.sh Blocksworld 1

