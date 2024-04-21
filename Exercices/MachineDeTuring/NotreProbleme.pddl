;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;      Exercice 1 : MachineDeTuring     ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Définition du problème MachineDeTuring
(define (problem p01)

    ; Definition du domaine utilisé : "machineDeTuring"
    (:domain machineDeTuring)

    ; Définition des objets utilisés
    (:objects 

        ; I et B sont des symboles
        I B - symbol

        ; s1, s2, s3, s4 et halt sont des états
        s1 s2 s3 s4 halt - state

        ; c1, c2, c3, c4 et c5 sont des cellules
        c1 c2 c3 c4 c5 - cell
    )

    ; Initialisation du problème MachineDeTuring
    ;
    ;   État courant : s1
    ;
    ;
    ;    tête de
    ;    lecture
    ;       |
    ;      _|_
    ;      \ /
    ;       V
    ;   +------+------+------+------+------+                
    ;   |   I  |   I  |   I  |   I  |   B  |
    ;   +------+------+------+------+------+ 
    ;      c1     c2     c3     c4     c5   
    ;
    (:init

        ; La tête de lecture est sur la cellule "c1"
        (isHeadOn c1)

        ; L'état "s1" est l'état courant
        (isCurrentState s1)
        
        ; La cellule "c1" est la même que la cellule "c1"
        (isSameCell c1 c1)

        ; La cellule "c2" est la même que la cellule "c2"
        (isSameCell c2 c2)

        ; La cellule "c3" est la même que la cellule "c3"
        (isSameCell c3 c3)

        ; La cellule "c4" est la même que la cellule "c4"
        (isSameCell c4 c4)

        ; La cellule "c5" est la même que la cellule "c5"
        (isSameCell c5 c5)

        ; La cellule "c2" est à droite de la cellule "c1"
        (isOnRight c2 c1)

        ; La cellule "c3" est à droite de la cellule "c2"
        (isOnRight c3 c2)

        ; La cellule "c4" est à droite de la cellule "c3"
        (isOnRight c4 c3)

        ; La cellule "c5" est à droite de la cellule "c4"
        (isOnRight c5 c4)

        ; La cellule "c1" est à gauche de la cellule "c2"
        (isOnLeft c1 c2)

        ; La cellule "c2" est à gauche de la cellule "c3"
        (isOnLeft c2 c3)

        ; La cellule "c3" est à gauche de la cellule "c4"
        (isOnLeft c3 c4)

        ; La cellule "c4" est à gauche de la cellule "c5"
        (isOnLeft c4 c5)

        ; La cellule "c1" contient le symbole "I"
        (hasSymbol I c1)

        ; La cellule "c2" contient le symbole "I"
        (hasSymbol I c2)

        ; La cellule "c3" contient le symbole "I"
        (hasSymbol I c3)

        ; La cellule "c4" contient le symbole "I"
        (hasSymbol I c4)

        ; La cellule "c5" contient le symbole "B"
        (hasSymbol B c5)

        ; Transition de l'état "s1" à l'état "s2" en lisant le symbole "I" et en écrivant le symbole "B" sans bouger
        (transitionIdle s1 s2 I B)

        ; Transition de l'état "s2" à l'état "s3" en lisant le symbole "B" et en écrivant le symbole "B" en allant à droite
        (transitionRight s2 s3 B B)

        ; Transition de l'état "s3" à l'état "s1" en lisant le symbole "I" et en écrivant le symbole "I" en allant à droite
        (transitionRight s3 s1 I I)

        ; Transition de l'état "s1" à l'état "halt" en lisant le symbole "B" et en écrivant le symbole "B" sans bouger
        (transitionIdle s1 halt B B)
    )

    ; But Final du problème MachineDeTuring
    ;
    ;   État courant : halt
    ;
    ;
    ;                                tête de
    ;                                lecture
    ;                                   |
    ;                                  _|_
    ;                                  \ /
    ;                                   V
    ;   +------+------+------+------+------+                
    ;   |   B  |   I  |   B  |   I  |   B  |
    ;   +------+------+------+------+------+ 
    ;      c1     c2     c3     c4     c5   
    ;
    (:goal
        
        ; Ensemble des conditions à satisfaire pour atteindre le but final
        (and
            
            ; L'état "halt" est l'état courant
            (isCurrentState halt)
        )
    )
)
