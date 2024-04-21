;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;      Domaine : MachineDeTuring     ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Définition du domaine MachineDeTuring
(define (domain machineDeTuring)

    (:requirements :strips :typing)

    ; Types : états, symboles, cellules
    (:types state symbol cell)

    ; Prédicats : Fonctions qui décrivent notre domaine
    (:predicates
        
        ; La cellule "c" contient le symbole "x"
        (hasSymbol ?x - symbol ?c - cell)

        ; La tête de lecture est sur la cellule "x"
        (isHeadOn ?x - cell)

        ; La cellule "c1" est à gauche de la cellule "c2"
        (isOnLeft ?c1 ?c2 - cell)

        ; La cellule "c1" est à droite de la cellule "c2"
        (isOnRight ?c1 ?c2 - cell)

        ; La cellule "c1" est la même que la cellule "c2"
        (isSameCell ?c1 ?c2 - cell)

        ; L'état "x" est l'état courant
        (isCurrentState ?x - state)

        ; Transition de l'état "s1" à l'état "s2" en lisant le symbole "x" et en écrivant le symbole "y" en allant à gauche
        (transitionLeft ?x ?y - state ?s1 ?s2 - symbol)

        ; Transition de l'état "s1" à l'état "s2" en lisant le symbole "x" et en écrivant le symbole "y" en allant à droite
        (transitionRight ?x ?y - state ?s1 ?s2 - symbol)

        ; Transition de l'état "s1" à l'état "s2" en lisant le symbole "x" et en écrivant le symbole "y" sans bouger
        (transitionIdle ?x ?y - state ?s1 ?s2 - symbol)
    )

    ; Actions : Transition à gauche
    (:action transitionLeft
        
        ; Paramètres : L'état "state1", l'état "state2", la cellule "c1", la cellule "c2", le symbole "sym1" et le symbole "sym2"
        :parameters (?state1 - state ?state2 - state ?c1 - cell ?c2 - cell ?sym1 - symbol ?sym2 - symbol)
        
        ; Préconditions de l'action : Transition à gauche
        :precondition
            
            ; Ensemble des préconditions de cette action
            (and 
                
                ; L'état "state1" est l'état courant
                (isCurrentState ?state1)

                ; La cellule "c2" est à gauche de la cellule "c1"
                (isOnLeft ?c2 ?c1)

                ; La tête de lecture est sur la cellule "c1"
                (isHeadOn ?c1)

                ; La cellule "c1" contient le symbole "sym1"
                (hasSymbol ?sym1 ?c1)

                ; Transition de l'état "state1" à l'état "state2" en lisant le symbole "sym1" et en écrivant le symbole "sym2" en allant à gauche
                (transitionLeft ?state1 ?state2 ?sym1 ?sym2)
            )

        ; Effets de l'action : Transition à gauche
        :effect
        
            ; Ensemble des effets de cette action
            (and
                
                ; L'état "state2" est l'état courant
                (isCurrentState ?state2)

                ; L'état "state1" n'est plus l'état courant
                (not (isCurrentState ?state1))

                ; La tête de lecture est sur la cellule "c2"
                (isHeadOn ?c2)

                ; La tête de lecture n'est plus sur la cellule "c1"
                (not (isHeadOn ?c1))

                ; La cellule "c1" ne contient plus le symbole "sym1"
                (not (hasSymbol ?sym1 ?c1))

                ; La cellule "c1" contient le symbole "sym2"
                (hasSymbol ?sym2 ?c1)
            )
    )

    ; Actions : Transition à droite
    (:action transitionRight
        
        ; Paramètres : L'état "state1", l'état "state2", la cellule "c1", la cellule "c2", le symbole "sym1" et le symbole "sym2"
        :parameters (?state1 - state ?state2 - state ?c1 - cell ?c2 - cell ?sym1 - symbol ?sym2 - symbol)
        
        ; Préconditions de l'action : Transition à droite
        :precondition
            
            ; Ensemble des préconditions de cette action
            (and 
                
                ; L'état "state1" est l'état courant
                (isCurrentState ?state1)

                ; La tête de lecture est sur la cellule "c1"
                (isHeadOn ?c1)

                ; La cellule "c2" est à droite de la cellule "c1"
                (isOnRight ?c2 ?c1)

                ; La cellule "c1" contient le symbole "sym1"
                (hasSymbol ?sym1 ?c1)

                ; Transition de l'état "state1" à l'état "state2" en lisant le symbole "sym1" et en écrivant le symbole "sym2" en allant à droite
                (transitionRight ?state1 ?state2 ?sym1 ?sym2)
            )

        ; Effets de l'action : Transition à droite
        :effect
        
            ; Ensemble des effets de cette action
            (and 
                
                ; L'état "state2" est l'état courant
                (isCurrentState ?state2)

                ; L'état "state1" n'est plus l'état courant
                (not (isCurrentState ?state1))

                ; La tête de lecture est sur la cellule "c2"
                (isHeadOn ?c2)

                ; La tête de lecture n'est plus sur la cellule "c1"
                (not (isHeadOn ?c1))

                ; La cellule "c1" ne contient plus le symbole "sym1"
                (not (hasSymbol ?sym1 ?c1))

                ; La cellule "c1" contient le symbole "sym2"
                (hasSymbol ?sym2 ?c1)
            )
    )

    ; Actions : Transition sans bouger
    (:action transitionIdle
        
        ; Paramètres : L'état "state1", l'état "state2", la cellule "c1", la cellule "c2", le symbole "sym1" et le symbole "sym2"
        :parameters (?state1 - state ?state2 - state ?c1 - cell ?c2 - cell ?sym1 - symbol ?sym2 - symbol)
        
        ; Préconditions de l'action : Transition sans bouger
        :precondition
        
            ; Ensemble des préconditions de cette action
            (and 
                
                ; L'état "state1" est l'état courant
                (isCurrentState ?state1)

                ; La cellule "c2" est la même que la cellule "c1"
                (isSameCell ?c2 ?c1)

                ; La tête de lecture est sur la cellule "c1"
                (isHeadOn ?c1)

                ; La cellule "c1" contient le symbole "sym1"
                (hasSymbol ?sym1 ?c1)

                ; Transition de l'état "state1" à l'état "state2" en lisant le symbole "sym1" et en écrivant le symbole "sym2" sans bouger
                (transitionIdle ?state1 ?state2 ?sym1 ?sym2)
            )

        ; Effets de l'action : Transition sans bouger
        :effect
        
            ; Ensemble des effets de cette action
            (and 
                
                ; L'état "state2" est l'état courant
                (isCurrentState ?state2)

                ; L'état "state1" n'est plus l'état courant
                (not (isCurrentState ?state1))

                ; La cellule "c1" ne contient plus le symbole "sym1"
                (not (hasSymbol ?sym1 ?c1))

                ; La cellule "c1" contient le symbole "sym2"
                (hasSymbol ?sym2 ?c1)
            )
    )
)