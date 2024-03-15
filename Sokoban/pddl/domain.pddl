(define (domain domain_sokoban)

(:requirements :strips :typing)

(:types 
    agent
    box
    node
)

(:predicates 
    (isBoxOnGoal ?x - box)
    (isNotBoxOnGoal ?x - box)
    (isAgentOnNode ?x - agent ?y - node)
    (isBoxOnNode ?x - box ?y - node)
    (isGoalNode ?x - node)
    (isBusyNode ?x - node)
    (isNotBusyNode ?x - node)
    (isAbove ?x - node ?y - node) ;x is above y
    (isBelow ?x - node ?y - node)  ;x is below y
    (isOnLeft ?x - node ?y - node) ;x is on the left of y
    (isOnRight ?x - node ?y - node);x is on the right y
)

(:action moveAgentUp
    :parameters (?x - agent ?n1 - node ?n2 - node)
    :precondition (and 
                    (isAbove ?n2 ?n1)
                    (isAgentOnNode ?x ?n1)
                    (isNotBusyNode ?n2)
    )
    :effect (and 
        (isAgentOnNode ?x ?n2)
        (not (isAgentOnNode ?x ?n1))
    )
)

(:action moveAgentDown
    :parameters (?x - agent ?n1 - node ?n2 - node)
    :precondition (and 
                    (isBelow ?n2 ?n1)
                    (isAgentOnNode ?x ?n1)
                    (isNotBusyNode ?n2)
    )
    :effect (and 
        (isAgentOnNode ?x ?n2)
        (not (isAgentOnNode ?x ?n1))
    )
)

(:action moveAgentLeft
    :parameters (?x - agent ?n1 - node ?n2 - node)
    :precondition (and 
                    (isOnLeft ?n2 ?n1)
                    (isAgentOnNode ?x ?n1)
                    (isNotBusyNode ?n2)
    )
    :effect (and 
        (isAgentOnNode ?x ?n2)
        (not (isAgentOnNode ?x ?n1))
    )
)

(:action moveAgentRight
    :parameters (?x - agent ?n1 - node ?n2 - node)
    :precondition (and 
                    (isOnRight ?n2 ?n1)
                    (isAgentOnNode ?x ?n1)
                    (isNotBusyNode ?n2)
    )
    :effect (and 
        (isAgentOnNode ?x ?n2)
        (not (isAgentOnNode ?x ?n1))
    )
)

(:action moveBoxUp
    :parameters (?x - agent ?n1 - node ?n2 - node ?n3 - node ?b - box)
    :precondition (and
        (isAbove ?n2 ?n1)
        (isAbove ?n3 ?n2)
        (isAgentOnNode ?x ?n1)
        (isBoxOnNode ?b ?n2)
        (isNotBusyNode ?n3)
    )
    :effect (and 
        (isAgentOnNode ?x ?n2)
        (not (isAgentOnNode ?x ?n1))
        (isBoxOnNode ?b ?n3)
        (not (isBoxOnNode ?b ?n2))        
        (not (isBusyNode ?n2))
        (isNotBusyNode ?n2)
        (isBusyNode ?n3)
        (not (isNotBusyNode ?n3))
        (not (isBoxOnGoal ?b))
        (isNotBoxOnGoal ?b)
    )
)

(:action moveBoxDown
    :parameters (?x - agent ?n1 - node ?n2 - node ?n3 - node ?b - box)
    :precondition (and
        (isBelow ?n2 ?n1)
        (isBelow ?n3 ?n2)
        (isAgentOnNode ?x ?n1)
        (isBoxOnNode ?b ?n2)
        (isNotBusyNode ?n3)
    )
    :effect (and 
        (isAgentOnNode ?x ?n2)
        (not (isAgentOnNode ?x ?n1))
        (isBoxOnNode ?b ?n3)
        (not (isBoxOnNode ?b ?n2))        
        (not (isBusyNode ?n2))
        (isNotBusyNode ?n2)
        (isBusyNode ?n3)
        (not (isNotBusyNode ?n3))
        (not (isBoxOnGoal ?b))
        (isNotBoxOnGoal ?b)
    )
)

(:action moveBoxToRight
    :parameters (?x - agent ?n1 - node ?n2 - node ?n3 - node ?b - box)
    :precondition (and
        (isOnRight ?n2 ?n1)
        (isOnRight ?n3 ?n2)
        (isAgentOnNode ?x ?n1)
        (isBoxOnNode ?b ?n2)
        (isNotBusyNode ?n3)
    )
    :effect (and 
        (isAgentOnNode ?x ?n2)
        (not (isAgentOnNode ?x ?n1))
        (isBoxOnNode ?b ?n3)
        (not (isBoxOnNode ?b ?n2))        
        (not (isBusyNode ?n2))
        (isNotBusyNode ?n2)
        (isBusyNode ?n3)
        (not (isNotBusyNode ?n3))
        (not (isBoxOnGoal ?b))
        (isNotBoxOnGoal ?b)
    )
)

(:action moveBoxToLeft
    :parameters (?x - agent ?n1 - node ?n2 - node ?n3 - node ?b - box)
    :precondition (and
        (isOnLeft ?n2 ?n1)
        (isOnLeft ?n3 ?n2)
        (isAgentOnNode ?x ?n1)
        (isBoxOnNode ?b ?n2)
        (isNotBusyNode ?n3)
    )
    :effect (and 
        (isAgentOnNode ?x ?n2)
        (not (isAgentOnNode ?x ?n1))
        (isBoxOnNode ?b ?n3)
        (not (isBoxOnNode ?b ?n2))        
        (not (isBusyNode ?n2))
        (isNotBusyNode ?n2)
        (isBusyNode ?n3)
        (not (isNotBusyNode ?n3))
        (not (isBoxOnGoal ?b))
        (isNotBoxOnGoal ?b)
    )
)

(:action boxOnGoal
    :parameters (?b - box ?n1 - node)
    :precondition (and 
        (isBoxOnNode ?b ?n1)
        (isGoalNode ?n1)
        (isNotBoxOnGoal ?b) 
    )
    :effect (and 
        (isBoxOnGoal ?b)
        (not (isNotBoxOnGoal ?b))
    )
)

)