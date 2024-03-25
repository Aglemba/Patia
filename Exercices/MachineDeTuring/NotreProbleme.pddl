(define (problem p01) (:domain machineDeTuring)
(:objects 

    I B - symbol
    s1 s2 s3 s4 halt - state
    c1 c2 c3 c4 c5 - cell

)

(:init

    (isHeadOn c1)
    (isCurrentState s1)
    
    (isSameCell c1 c1)
    (isSameCell c2 c2)
    (isSameCell c3 c3)
    (isSameCell c4 c4)
    (isSameCell c5 c5)

    (isOnRight c2 c1)
    (isOnRight c3 c2)
    (isOnRight c4 c3)
    (isOnRight c5 c4)

    (isOnLeft c1 c2)
    (isOnLeft c2 c3)
    (isOnLeft c3 c4)
    (isOnLeft c4 c5)

    (hasSymbol I c1)
    (hasSymbol I c2)
    (hasSymbol I c3)
    (hasSymbol I c4)
    (hasSymbol B c5)

    (transitionIdle s1 s2 I B)
    (transitionRight s2 s3 B B)
    (transitionRight s3 s1 I I)
    (transitionIdle s1 halt B B)
    
)

(:goal (and
    (isCurrentState halt)
))

)
