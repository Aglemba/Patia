(define (problem p001)
    (:domain graph)
    (:objects
        bleu blanc rouge - color
        a b c d e f - node
        arc1 arc2 arc3 arc4 arc5 arc6 arc7 arc8 arc9 - arc
    )
    (:init
        (isDifferentColor bleu blanc)
        (isDifferentColor bleu rouge)
        (isDifferentColor blanc rouge)

        (isNotColored a)
        (isNotColored b)
        (isNotColored c)
        (isNotColored d)
        (isNotColored e)
        (isNotColored f)

        (isConnected a b arc1)
        (isConnected b a arc1)

        (isConnected a c arc2)
        (isConnected c a arc2)

        (isConnected b c arc3)
        (isConnected c b arc3)

        (isConnected b d arc4)
        (isConnected d b arc4)

        (isConnected d c arc5)
        (isConnected c d arc5)

        (isConnected d f arc6)
        (isConnected f d arc6)

        (isConnected c e arc7)
        (isConnected e c arc7)

        (isConnected e f arc8)
        (isConnected f e arc8)

        (isConnected c f arc9)
        (isConnected f c arc9)

        (isNotMarked arc1)
        (isNotMarked arc2)
        (isNotMarked arc3)
        (isNotMarked arc4)
        (isNotMarked arc5)
        (isNotMarked arc6)
        (isNotMarked arc7)
        (isNotMarked arc8)
        (isNotMarked arc9)
    )

    (:goal
        (and (isMarked arc1)
            (isMarked arc2)
            (isMarked arc3)
            (isMarked arc4)
            (isMarked arc5)
            (isMarked arc6)
            (isMarked arc7)
            (isMarked arc8)
            (isMarked arc9))
    )
)