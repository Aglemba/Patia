# Planification Automatique & Techniques d’Intelligence Artificielle

Projet PATIA - Exercices - Sokoban - SAT Planning


## Membres du groupe

- Baydoun Ali
- Glemba Adrien
- Guidetti Jorane
- Negar Louis

Avril 2024 - M1 INFO - IM2AG


## SUJET

[Sujet des exercices](http://pddl4j.imag.fr/repository/exercices/)


# Sommaire

- [Exercices](#Exercices)
    - [Compiler / Executer](#Compiler-/-Exécuter-les-exercices)
- [Sokoban](#Sokoban)
    - [Compiler / Executer](#Compiler-/-Exécuter-le-Sokoban)
- [SAT Planning](#SAT-Planning)
    - [Compiler / Executer](#Compiler-/-Exécuter-le-Sat)


## Exercices

### Liste des exercices

- Blocksworld
- Hanoi
- NPuzzle
- HamiltonianCycle
- GraphColoring
- PursuitEvasion
- MachineDeTuring
- SatSolver


### >>> Compiler / Exécuter les exercices

Pour compiler et exécuter les exercices, il suffit de ce placer dans le répertoire `Exercices`
```bash
cd Exercices
```

Ensuite, il suffit de taper la commande suivante en remplaçant `[NomDuProblème]` par le nom du problème souhaité et `(NuméroDuProblème)` par le numéro du problème.

Si aucun numéro de problème n'est renseigné, le problème `NotreProbleme` sera executé par défaut :
```bash
./make.sh [NomDuProblème] (NuméroDuProblème)
```

Par exemple, pour compiler et exécuter le problème 1 de Blocksworld, il suffit de taper :
```bash
./make.sh Blocksworld 1
```

([voir le contenu du make](/Exercices/make.sh))


## Sokoban

### >>> Compiler / Exécuter le Sokoban

Pour compiler et exécuter le sokoban, il suffit de ce placer dans le répertoire `Sokoban`
```bash
cd Sokoban
```

Ensuite, il faut taper la commande suivante :
```bash
./run.sh <nom_du_test>
```

Puis, ouvrir le lien suivant:

http://localhost:8888/test.html

([voir le contenu du make Sokoban](/Sokoban/run.sh))

## SAT Planning

### >>> Compiler / Exécuter le SAT Planning

Pour compiler et exécuter le SAT Planning, vous devez vous placer dans le répertoire `sat-planner`.
```bash
cd sat-planner
```

Ensuite, exécutez le script make.sh en remplaçant `<nom_du_domain.pddl>` par le nom du fichier du domaine PDDL et `<nom_du_probleme.pddl>` par le nom du fichier du problème PDDL, tous deux situés dans le dossier `sat-planner/pddl`.

```bash
./make.sh <nom_du_domain.pddl> <nom_du_probleme.pddl>
```

([voir le contenu du make SatPlanner](/sat-planner/make.sh))

