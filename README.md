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


## Exercices

### Liste des exercices

- Blocksworld
- GraphColoring
- Hanoi
- N-Puzzle
- PursuitEvasion


### >>> Compiler / Exécuter les exercices

Pour compiler et exécuter les exercices, il suffit de ce placer dans le répertoire `Exercices`
```bash
cd Exercices
```

Ensuite, il suffit de taper la commande suivante en remplaçant `[NomDuProblème]` par le nom du problème souhaité et `[NuméroDuProblème]` par le numéro du problème.
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

Ensuite, il suffit de taper la commande suivante :
```bash
./makeSokoban.sh
```

([voir le contenu du make Sokoban](/Sokoban/makeSokoban.sh))