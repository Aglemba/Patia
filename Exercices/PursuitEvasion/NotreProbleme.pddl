(define (problem p001) 
(:domain PursuitEvasion)
    (:objects
        n1 n2 n3 n4 n5 - node
        a1 a2 - agent
    )

    (:init

        (isOnNode n1 a1)
        (isOnNode n1 a2)
        (isCovered n1)

        (isDifferentAgent a1 a2)
        (isDifferentAgent a2 a1)

        (isConnected n1 n2)
        (isConnected n2 n1)
        (isConnected n2 n4)
        (isConnected n4 n2)
        (isConnected n2 n3)
        (isConnected n3 n2)
        (isConnected n2 n5)
        (isConnected n5 n2)
        (isConnected n3 n4)
        (isConnected n4 n3)

        (singleConnection n1)
        (notMultipleConnection n1)
        (multipleConnection n2)
        (doubleConnection n3)
        (doubleConnection n4)
        (notMultipleConnection n3)
        (notMultipleConnection n4)
        (singleConnection n5)
        (notMultipleConnection n5)
        
    )

    (:goal
        (and
        (isCovered n1)
        (isCovered n2)
        (isCovered n3)
        (isCovered n4)
        (isCovered n5)
        )
    )

)