(define (problem p001) 
(:domain PursuitEvasion)
    (:objects
        n1 n2 n3 n4 n5 - node
        arc1_2 arc2_5 arc2_3 arc2_4 arc3_4 - arc
        a1 a2 - agent
    )

    (:init
        (isOnNode n1 a1)
        (isOnNode n1 a2)
        (isCovered n1)

        (isDifferentAgent a1 a2)
        (isDifferentAgent a2 a1)

        (isConnected n1 n2)
        (isConnectedArc n1 n2 arc1_2)

        (isConnected n2 n1)
        (isConnectedArc n2 n1 arc1_2)

        (isConnected n2 n4)
        (isConnectedArc n2 n4 arc2_4)

        (isConnected n4 n2)
        (isConnectedArc n4 n2 arc2_4)

        (isConnected n2 n3)
        (isConnectedArc n2 n3 arc2_3)

        (isConnected n3 n2)
        (isConnectedArc n3 n2 arc2_3)

        (isConnected n2 n5)
        (isConnectedArc n2 n5 arc2_5)

        (isConnected n5 n2)
        (isConnectedArc n5 n2 arc2_5)

        (isConnected n3 n4)
        (isConnectedArc n3 n4 arc3_4)

        (isConnected n4 n3)
        (isConnectedArc n4 n3 arc3_4)

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

        (isCoveredArc arc1_2)
        (isCoveredArc arc2_5)
        (isCoveredArc arc2_3)
        (isCoveredArc arc2_4)
        (isCoveredArc arc3_4)
        )
    )

)