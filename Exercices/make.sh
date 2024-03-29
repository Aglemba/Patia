# Liste des problèmes :
#
# Blocksworld
# Hanoi
# NPuzzle : TODO Presque FINI
# GraphColoring
# PursuitEvasion
# MachineDeTuring
# SatSolver

# HSP = optimal / FF = sous-optimal
java -cp pddl4j/pddl4j-4.0.0.jar fr.uga.pddl4j.planners.statespace.HSP \
   $1/domain.pddl \
   $1/NotreProbleme$2.pddl

# Si tout s'est bien passé, affichez le message suivant : echo -e "Problème $1 : NotreProbleme$2\n"
# Sinon, affichez le message suivant : Error
if [ $? -eq 0 ]; then
    echo -e "*** $1 : Succès ***\n"
else
    echo "*** $1 : Echec ***\n"
    echo "Erreur lors de l'exécution du problème $1 : $1/NotreProbleme$2.pddl\n"
fi

# Pour exécuter le fichier NotreProbleme de Blocksworld, tapez la commande suivante :
# ./make.sh Blocksworld

# Pour exécuter le fichier NotreProbleme[NuméroDuProblème] Blocksworld, tapez la commande suivante :
# ./make.sh Blocksworld [NuméroDuProblème]
# ./make.sh Blocksworld 1
