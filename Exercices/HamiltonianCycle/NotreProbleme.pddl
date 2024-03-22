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
    V - arc
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
    (isConnected B D V)
    (isConnected D B V)
    (hasNotPassedOnNode B)
    (hasNotPassedOnNode C)
    (hasNotPassedOnNode D)
    (isOnNode A)
    (isOnStack s B)
    (isOnStack s C)
    (isOnStack s D)
    (stackIsFilled s)
)

(:goal (and
    (isHamiltonianCycle s)
))
)
