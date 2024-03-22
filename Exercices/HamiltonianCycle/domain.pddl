
(define (domain h-cycle)

(:requirements :strips :typing :adl)

(:types 
    node
    arc
    stack
)


(:predicates 
    (isConnected ?n1 - node ?n2 - node ?a - arc)
    (hasPassedOnArc ?a - arc)
    (hasNotPassedOnArc ?a - arc)
    (isOnNode ?n1 - node)
    (isOnStack ?s - stack ?a - arc)
    (stackIsFilled ?s - stack)
    (isHamiltonianCycle ?s - stack) 
)

(:action move
    :parameters (?n1 - node ?n2 - node ?a - arc ?s - stack)
    :precondition (and 
        (isConnected ?n1 ?n2 ?a)
        (isOnNode ?n1)
        (hasNotPassedOnArc ?a)
        (stackIsFilled ?s)
        (isOnStack ?s ?a)
    )
    :effect (and 
        (isOnNode ?n2)
        (not (isOnNode ?n1))
        (not (hasNotPassedOnArc ?a))
        (hasPassedOnArc ?a)
        (not (isOnStack ?s ?a))
    )
)
(:action unstack
    :parameters (?s - stack ?a - arc)
    :precondition (and 
        (forall (?a) (not (isOnStack ?s ?a)))
    )
    :effect (and 
        (isHamiltonianCycle ?s)
    )
)


)