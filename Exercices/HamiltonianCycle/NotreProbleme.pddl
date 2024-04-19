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

        ; I, II, III, IV, V, VI et VII sont des arcs
        I II III IV V VI VII - arc

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
    ;                'VII'  /  |   |  \   'III'
    ;                 /   'I'  |   |  'II'   \
    ;               /    /     |   |      \    \
    ;             /    /       |   |        \    \
    ;            *****         |   |          +...+
    ;            | A |        'V' 'V'         | C |
    ;            *****         |   |          +...+
    ;             \    \       |   |        /    /
    ;               \    \     |   |      /    /
    ;                 \  'VI'  |   |   'IV'   /
    ;                'VI'   \  |   |  /   'IV'
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
        
        ; Le noeud "A" est connecté au noeud "B" par l'arc "I"
        (isConnected A B I)

        ; Le noeud "B" est connecté au noeud "A" par l'arc "VII"
        (isConnected B A VII)

        ; Le noeud "B" est connecté au noeud "C" par l'arc "II"
        (isConnected B C II)

        ; Le noeud "C" est connecté au noeud "B" par l'arc "III"
        (isConnected C B III)

        ; Le noeud "C" est connecté au noeud "D" par l'arc "IV"
        (isConnected C D IV)

        ; Le noeud "D" est connecté au noeud "C" par l'arc "III"
        (isConnected D C IV)

        ; Le noeud "D" est connecté au noeud "A" par l'arc "VI"
        (isConnected D A VI)

        ; Le noeud "A" est connecté au noeud "D" par l'arc "VI"
        (isConnected A D VI)

        ; Le noeud "B" est connecté au noeud "D" par l'arc "V"
        (isConnected B D V)

        ; Le noeud "D" est connecté au noeud "B" par l'arc "V"
        (isConnected D B V)

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