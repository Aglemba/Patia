(define (problem p01) (:domain SatSolver)
    (:objects
        c1 c2 c3 - clause
        x1 x2 x3 x4  - variable
    )

    (:init
        (hasNoValue x1)
        (hasNoValue x2)
        (hasNoValue x3)
        (hasNoValue x4)



        (isTrueInClause x1 c1)
        (isTrueInClause x3 c1)
        (isFalseInClause x4 c1)

        (isTrueInClause x4 c2)

        (isTrueInClause x2 c3)
        (isFalseInClause x3 c3)
    )

    (:goal
        (and
        (isClauseSolved c1)
        (isClauseSolved c2)
        (isClauseSolved c3)
        )
    )

)