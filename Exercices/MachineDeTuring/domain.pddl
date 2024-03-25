(define (domain machineDeTuring)

(:requirements :strips :typing)

(:types

    state
    symbol
    cell
)

(:predicates
    (hasSymbol ?x - symbol ?c - cell)
    (isHeadOn ?x - cell)
    (isOnLeft ?c1 ?c2 - cell)
    (isOnRight ?c1 ?c2 - cell)
    (isSameCell ?c1 ?c2 - cell)
    (isCurrentState ?x - state)
    (transitionLeft ?x ?y - state ?s1 ?s2 - symbol)
    (transitionRight ?x ?y - state ?s1 ?s2 - symbol)
    (transitionIdle ?x ?y - state ?s1 ?s2 - symbol)
)

(:action transitionLeft
    :parameters (?state1 - state ?state2 - state ?c1 - cell ?c2 - cell ?sym1 - symbol ?sym2 - symbol)
    :precondition (and 
        (isCurrentState ?state1)
        (isOnLeft ?c2 ?c1)
        (isHeadOn ?c1)
        (hasSymbol ?sym1 ?c1)
        (transitionLeft ?state1 ?state2 ?sym1 ?sym2)
    )
    :effect (and 
        (isCurrentState ?state2)
        (not (isCurrentState ?state1))
        (isHeadOn ?c2)
        (not (isHeadOn ?c1))
        (not (hasSymbol ?sym1 ?c1))
        (hasSymbol ?sym2 ?c1)
    )
)

(:action transitionRight
    :parameters (?state1 - state ?state2 - state ?c1 - cell ?c2 - cell ?sym1 - symbol ?sym2 - symbol)
    :precondition (and 
        (isCurrentState ?state1)
        (isHeadOn ?c1)
        (isOnRight ?c2 ?c1)
        (hasSymbol ?sym1 ?c1)
        (transitionRight ?state1 ?state2 ?sym1 ?sym2)
    )
    :effect (and 
        (isCurrentState ?state2)
        (not (isCurrentState ?state1))
        (isHeadOn ?c2)
        (not (isHeadOn ?c1))
        (not (hasSymbol ?sym1 ?c1))
        (hasSymbol ?sym2 ?c1)
    )
)

(:action transitionIdle
    :parameters (?state1 - state ?state2 - state ?c1 - cell ?c2 - cell ?sym1 - symbol ?sym2 - symbol)
    :precondition (and 
        (isCurrentState ?state1)
        (isSameCell ?c2 ?c1)
        (isHeadOn ?c1)
        (hasSymbol ?sym1 ?c1)
        (transitionIdle ?state1 ?state2 ?sym1 ?sym2)
    )
    :effect (and 
        (isCurrentState ?state2)
        (not (isCurrentState ?state1))
        (not (hasSymbol ?sym1 ?c1))
        (hasSymbol ?sym2 ?c1)
    )
)

)