;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;      Domaine : HamiltonianCycle     ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Définition du domaine HamiltonianCycle
(define (domain h-cycle)

    (:requirements :strips :typing :adl)

    ; Types : noeud, arc, pile
    (:types node arc stack)

    ; Prédicats : Fonctions qui décrivent notre domaine
    (:predicates
        
        ; Le noeud "n1" est connecté au noeud "n2" par l'arc "a"
        (isConnected ?n1 - node ?n2 - node ?a - arc)

        ; On est passé sur le noeud "n"
        (hasPassedOnNode ?n - node)

        ; On n'est pas passé sur le noeud "n"
        (hasNotPassedOnNode ?n - node)

        ; On est sur le noeud "n1"
        (isOnNode ?n1 - node)

        ; Le noeud "n" est sur la pile "s"
        (isOnStack ?s - stack ?n - node)

        ; La pile "s" est pleine
        (stackIsFilled ?s - stack)

        ; La pile "s" est un cycle hamiltonien
        (isHamiltonianCycle ?s - stack) 
    )

    ; Actions : Se déplacer
    (:action move
        
        ; Paramètres : Les noeuds "n1" et "n2", l'arc "a" et la pile "s"
        :parameters (?n1 - node ?n2 - node ?a - arc ?s - stack)
        
        ; Préconditions de l'action : Se déplacer
        :precondition

            ; Ensemble des préconditions de cette action
            (and
                
                ; Le noeud "n1" est connecté au noeud "n2" par l'arc "a"
                (isConnected ?n1 ?n2 ?a)

                ; On est sur le noeud "n1"
                (isOnNode ?n1)

                ; On n'est pas passé sur le noeud "n2"
                (hasNotPassedOnNode ?n2)

                ; La pile "s" est pleine
                (stackIsFilled ?s)

                ; Le noeud "n2" est sur la pile "s"
                (isOnStack ?s ?n2)
            )

        ; Effets de l'action : Se déplacer
        :effect
        
            ; Ensemble des effets de cette action
            (and 
                
                ; On est sur le noeud "n2"
                (isOnNode ?n2)

                ; On n'est pas sur le noeud "n1"
                (not (isOnNode ?n1))

                ; On n'est pas, pas passé sur le noeud "n2"
                (not (hasNotPassedOnNode ?n2))

                ; On est passé sur le noeud "n2"
                (hasPassedOnNode ?n2)

                ; Le noeud "n2" n'est plus sur la pile "s"
                (not (isOnStack ?s ?n2))
            )
    )

    ; Action : Dépiler
    (:action unstack
        
        ; Paramètres : Le noeud "n" et la pile "s"
        :parameters (?s - stack ?n - node)

        ; Préconditions de l'action : Dépiler
        :precondition

            ; Ensemble des préconditions de cette action
            (and
                
                ; Pour tout noeud "n", ils ne sont pas sur la pile "s"
                (forall (?n) (not (isOnStack ?s ?n)))
            )
        
        ; Effets de l'action : Dépiler
        :effect
        
            ; Ensemble des effets de cette action
            (and
                
                ; La pile "s" est un cycle hamiltonien
                (isHamiltonianCycle ?s)
            )
    )
)