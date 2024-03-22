(define (problem p001) (:domain h-cycle)
(:objects 
    A - node
    B - node
    C - node
    D - node
    I - arc
    II - arc
    III - arc
    IV - arc
    VI - arc
    VII - arc
    s - stack
)

(:init
    (isConnected A B I)
    (isConnected B A VII)
    (isConnected B C II)
    (isConnected C B III)
    (isConnected C D IV)
    (isConnected D C IV)
    (isConnected D A VI)
    (isConnected A D VI)
    (hasNotPassedOnArc I)
    (hasNotPassedOnArc II)
    (hasNotPassedOnArc III)
    (hasNotPassedOnArc IV)
    (hasNotPassedOnArc VI)
    (hasNotPassedOnArc VII)
    (isOnNode A)
    (isOnStack s I)
    (isOnStack s II)
    (isOnStack s III)
    (isOnStack s IV)

    (isOnStack s VI)
    (isOnStack s VII)
    (stackIsFilled s)
)

(:goal (and
    (isHamiltonianCycle s)
))
)
