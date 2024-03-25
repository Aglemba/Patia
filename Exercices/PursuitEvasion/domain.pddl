(define (domain PursuitEvasion)

    (:requirements :strips :typing)
    (:types 
        node 
	agent
    )

    (:predicates 
	(isDifferentAgent ?x ?y - agent)
        (isConnected ?x ?y - node)
        (isOnNode ?x - node ?y - agent)
        (isCovered ?x - node)
        (singleConnection ?x - node)
        (doubleConnection ?x - node)
        (multipleConnection ?x - node)
        (notMultipleConnection ?x - node)
    )

    (:action coverSingleConnection
        :parameters (?n1 - node ?n2 - node ?a - agent)
        :precondition (and 
                (isOnNode ?n1 ?a)
                (isConnected ?n1 ?n2)
                (singleConnection ?n1)
                )
        :effect (and 
                (not (isOnNode ?n1 ?a))
                (isOnNode ?n2 ?a)
                (isCovered ?n2)
                )
    )

    (:action coverDoubleConnection
        :parameters (?n1 - node ?n2 - node ?n3 - node ?a - agent)
        :precondition (and 
                (isCovered ?n3)
                (isOnNode ?n1 ?a)
                (isConnected ?n1 ?n2)
                (isConnected ?n2 ?n3)
                (doubleConnection ?n1)
                )
        :effect (and 
                (not (isOnNode ?n1 ?a))
                (isOnNode ?n2 ?a)
                (isCovered ?n2)
                )
    )
    
    (:action coverMultipleNodes
        :parameters (?n1 - node ?n2 - node ?a1 - agent ?a2 - agent)
        :precondition (and 
                (isDifferentAgent ?a1 ?a2)
                (isOnNode ?n1 ?a1)
                (isOnNode ?n1 ?a2)
                (isConnected ?n1 ?n2)
                (multipleConnection ?n1)
                )
        :effect (and 
                (not (isOnNode ?n1 ?a1))
                (isOnNode ?n2 ?a1)
                (isCovered ?n2)
                )
    )

    (:action moveAgent
        :parameters (?n1 - node ?n2 - node ?a - agent)
        :precondition (and 
                (isOnNode ?n1 ?a)
                (isConnected ?n1 ?n2)
                (notMultipleConnection ?n1)
                )
        :effect (and 
                (not (isOnNode ?n1 ?a))
                (not (isCovered ?n1))
                (isOnNode ?n2 ?a)
                (isCovered ?n2)
                )
    )
    
)