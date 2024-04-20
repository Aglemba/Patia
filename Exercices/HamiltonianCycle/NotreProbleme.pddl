;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;      Exercice 1 : HamiltonianCycle     ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Définition du problème HamiltonianCycle
(define (problem p001)

    ; Définition du domaine utilisé : "h-cycle"
    (:domain h-cycle)

    ; Définition des objets utilisés
    (:objects
        
        ; A, B, C et D sont des noeuds
        A B C D - node

        ; s est une pile
        s - stack
    )

    ; Initialisation du problème HamiltonianCycle
    ;
    ;   On est sur le noeud "A" (*****)
    ;   On n'est pas passé sur les noeuds "B", "C" et "D" (...)
    ;
    ;
    ;                          +...+
    ;                        / | B | \
    ;                      /   +...+   \
    ;                    /    /|   |\    \
    ;                  /    /  |   |  \    \
    ;                 /    /   |   |    \    \
    ;               /    /     |   |      \    \
    ;             /    /       |   |        \    \
    ;            *****         |   |          +...+
    ;            | A |         |   |         | C |
    ;            *****         |   |          +...+
    ;             \    \       |   |        /    /
    ;               \    \     |   |      /    /
    ;                \    \    |   |    /     /
    ;                  \    \  |   |  /     /
    ;                    \    \|   |/    /
    ;                      \   +...+   /
    ;                        \ | D | /
    ;                          +...+
    ;
    ;
    ;   On a la pile "s" suivante :
    ;
    ;   +-------+
    ;   |   B   |
    ;   +-------+
    ;   |   C   |
    ;   +-------+
    ;   |   D   |
    ;   +-------+
    ;
    (:init
        
        ; Le noeud "A" est connecté au noeud "B"
        (isConnected A B)

        ; Le noeud "B" est connecté au noeud "A"
        (isConnected B A)

        ; Le noeud "B" est connecté au noeud "C"
        (isConnected B C)

        ; Le noeud "C" est connecté au noeud "B"
        (isConnected C B)

        ; Le noeud "C" est connecté au noeud "D"
        (isConnected C D)

        ; Le noeud "D" est connecté au noeud "C"
        (isConnected D C)

        ; Le noeud "D" est connecté au noeud "A"
        (isConnected D A)

        ; Le noeud "A" est connecté au noeud "D"
        (isConnected A D)

        ; Le noeud "B" est connecté au noeud "D"
        (isConnected B D)

        ; Le noeud "D" est connecté au noeud "B"
        (isConnected D B)

        ; On n'est pas passé sur le noeud "B"
        (hasNotPassedOnNode B)

        ; On n'est pas passé sur le noeud "C"
        (hasNotPassedOnNode C)

        ; On n'est pas passé sur le noeud "D"
        (hasNotPassedOnNode D)

        ; On est sur le noeud "A"
        (isOnNode A)
        
        ; Le noeud "B" est sur la pile "s"
        (isOnStack s B)

        ; Le noeud "C" est sur la pile "s"
        (isOnStack s C)

        ; Le noeud "D" est sur la pile "s"
        (isOnStack s D)

        ; La pile "s" est remplie
        (stackIsFilled s)
    )

    ; Initialisation du problème HamiltonianCycle
    ;
    ;
    (:goal
        
        ; Ensemble des conditions à satisfaire pour atteindre le but final
        (and
            
            ; La pile "s" est un cycle hamiltonien
            (isHamiltonianCycle s)
        )
    )
)