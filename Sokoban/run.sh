#!/bin/bash

javac -cp "lib/pddl4j-4.0.0.jar" -d classes src/main/java/sokoban/SokobanSolver.java src/main/java/sokoban/JsonToPddlParser.java src/main/java/sokoban/Agent.java

if [ -z "$1" ]; then
    java -cp "lib/pddl4j-4.0.0.jar:classes" sokoban.SokobanSolver
else
    java -cp "lib/pddl4j-4.0.0.jar:classes" sokoban.SokobanSolver "$1"
fi

if [ -z "$1" ]; then
    java --add-opens java.base/java.lang=ALL-UNNAMED -server -Xms2048m -Xmx2048m -cp "$(mvn dependency:build-classpath -Dmdep.outputFile=/dev/stdout -q):target/test-classes/:target/classes" sokoban.SokobanMain
else
    java --add-opens java.base/java.lang=ALL-UNNAMED -server -Xms2048m -Xmx2048m -cp "$(mvn dependency:build-classpath -Dmdep.outputFile=/dev/stdout -q):target/test-classes/:target/classes" sokoban.SokobanMain "$1"
fi

