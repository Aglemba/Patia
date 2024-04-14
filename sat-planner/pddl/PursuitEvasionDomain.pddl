(define (domain PursuitEvasion)

    (:requirements :strips :typing)
    (:types 
        node
        arc
	agent
    )

    (:predicates 
	(isDifferentAgent ?x ?y - agent)
        (isConnected ?x ?y - node)
        (isConnectedArc ?x ?y - node ?z - arc)
        (isOnNode ?x - node ?y - agent)
        (isCovered ?x - node)
        (isCoveredArc ?x - arc)
        (singleConnection ?x - node)
        (doubleConnection ?x - node)
        (multipleConnection ?x - node)
        (notMultipleConnection ?x - node)
    )

    (:action coverSingleConnection
        :parameters (?n1 - node ?n2 - node ?a - agent ?arc1 - arc)
        :precondition (and 
                (isOnNode ?n1 ?a)
                (isConnected ?n1 ?n2)
                (singleConnection ?n1)
                (isConnectedArc ?n1 ?n2 ?arc1)
                )
        :effect (and 
                (not (isOnNode ?n1 ?a))
                (isOnNode ?n2 ?a)
                (isCovered ?n2)
                (isCoveredArc ?arc1)
                )
    )

    (:action coverDoubleConnection
        :parameters (?n1 - node ?n2 - node ?n3 - node ?a - agent ?arc12 - arc ?arc23 - arc)
        :precondition (and 
                (isCovered ?n3)
                (isOnNode ?n1 ?a)
                (isConnected ?n1 ?n2)
                (isConnected ?n2 ?n3)
                (doubleConnection ?n1)
                (isConnectedArc ?n1 ?n2 ?arc12)
                (isConnectedArc ?n2 ?n3 ?arc23)
                )
        :effect (and 
                (not (isOnNode ?n1 ?a))
                (isOnNode ?n2 ?a)
                (isCovered ?n2)
                (isCoveredArc ?arc12)
                )
    )
    
    (:action coverMultipleNodes
        :parameters (?n1 - node ?n2 - node ?a1 - agent ?a2 - agent ?arc12 - arc)
        :precondition (and 
                (isDifferentAgent ?a1 ?a2)
                (isOnNode ?n1 ?a1)
                (isOnNode ?n1 ?a2)
                (isConnected ?n1 ?n2)
                (isConnectedArc ?n1 ?n2 ?arc12)
                (multipleConnection ?n1)
                )
        :effect (and 
                (not (isOnNode ?n1 ?a1))
                (isOnNode ?n2 ?a1)
                (isCovered ?n2)
                (isCoveredArc ?arc12)
                )
    )

    (:action moveAgent
        :parameters (?n1 - node ?n2 - node ?a - agent ?arc - arc)
        :precondition (and 
                (isOnNode ?n1 ?a)
                (isConnected ?n1 ?n2)
                (isConnectedArc ?n1 ?n2 ?arc)
                (notMultipleConnection ?n1)
                )
        :effect (and 
                (not (isOnNode ?n1 ?a))
                (not (isCovered ?n1))
                (isOnNode ?n2 ?a)
                (isCovered ?n2)
                (not (isCoveredArc ?arc))
                )
    )
)