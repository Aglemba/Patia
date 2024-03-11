(define (domain graph)

(:requirements :strips :typing)
(:types 
    node 
    color
    arc
    )

(:predicates 
    (isConnected ?x - node ?y - node ?z - arc)
    (isColored ?x - node)
    (isNotColored ?x - node)
    (isDifferentColor ?x - color ?y - color)
    (hasColor ?x - node ?y - color)
    (isMarked ?x - arc)
    (isNotMarked ?x - arc)
)

(:action colorTwoNodes
    :parameters (?x - node ?y - node ?z - arc ?c - color ?c2 - color)
    :precondition (and 
                    (isConnected ?x ?y ?z)
                    (isNotColored ?x)
                    (isNotColored ?y)
                    (isNotMarked ?z)
                    (isDifferentColor ?c ?c2)
    )
    :effect (and 
        (isColored ?x)
        (isColored ?y)
        (not (isNotColored ?x))
        (not (isNotColored ?y))
        (hasColor ?x ?c)
        (hasColor ?y ?c2)
        (isMarked ?z)
        (not (isNotMarked ?z))
    )
)

(:action colorNode
    :parameters (?x - node ?y - node ?z - arc ?c - color ?c2 - color)
    :precondition (and 
                    (isConnected ?x ?y ?z)
                    (isNotColored ?x)
                    (isNotMarked ?z)
                    (hasColor ?y ?c2)
                    (isDifferentColor ?c ?c2)
    )
    :effect (and 
        (isColored ?x)
        (not (isNotColored ?x))
        (hasColor ?x ?c)
        (isMarked ?z)
        (not (isNotMarked ?z))
    )
)

(:action markColoredNodes
    :parameters (?x - node ?y - node ?z - arc ?c - color ?c2 - color)
    :precondition (and 
        (isConnected ?x ?y ?z)
        (isColored ?x)
        (isColored ?y)
        (hasColor ?x ?c)
        (hasColor ?y ?c2)
        (isNotMarked ?z)
        (isDifferentColor ?c ?c2)
    )
    :effect (and 
        (isMarked ?z)
        (not (isNotMarked ?z))
    )
)
)