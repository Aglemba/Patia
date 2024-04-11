(define (problem block) (:domain block)
(:objects 
    a - agent
    r1 r2 - room
)

(:init
    (at a r1)
)

(:goal (and
    (at a r2)
))

)
