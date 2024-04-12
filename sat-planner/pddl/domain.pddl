
(define (domain block)

;remove requirements that are not needed
(:requirements :strips :typing)

(:types 
agent
room
)

(:predicates
    (at ?a - agent ?r - room)
    (isConnected ?r1 ?r2 - room)
)

(:action move
    :parameters (?r1 ?r2 - room ?a -agent)
    :precondition (and 
        (at ?a ?r1)
        (isConnected ?r1 ?r2)
        )
    :effect (and 
        (at ?a ?r2)
        (not (at ?a ?r1))
    )
)
)