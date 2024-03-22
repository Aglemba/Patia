
(define (domain h-cycle)

(:requirements :strips :typing :adl)

(:types 
    node
    arc
    stack
)


(:predicates 
    (isConnected ?n1 - node ?n2 - node ?a - arc)
    (hasPassedOnNode ?n - node)
    (hasNotPassedOnNode ?n - node)
    (isOnNode ?n1 - node)
    (isOnStack ?s - stack ?n - node)
    (stackIsFilled ?s - stack)
    (isHamiltonianCycle ?s - stack) 
)

(:action move
    :parameters (?n1 - node ?n2 - node ?a - arc ?s - stack)
    :precondition (and 
        (isConnected ?n1 ?n2 ?a)
        (isOnNode ?n1)
        (hasNotPassedOnNode ?n2)
        (stackIsFilled ?s)
        (isOnStack ?s ?n2)
    )
    :effect (and 
        (isOnNode ?n2)
        (not (isOnNode ?n1))
        (not (hasNotPassedOnNode ?n2))
        (hasPassedOnNode ?n2)
        (not (isOnStack ?s ?n2))
    )
)
(:action unstack
    :parameters (?s - stack ?n - node)
    :precondition (and 
        (forall (?n) (not (isOnStack ?s ?n)))
    )
    :effect (and 
        (isHamiltonianCycle ?s)
    )
)


)