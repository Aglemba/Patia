(define (problem block) (:domain block)
(:objects 
    a - agent
    r1 r2 r3 - room
)

(:init
    (at a r1)
    (isConnected r1 r2)
    (isConnected r2 r3)
)

(:goal (and
    (at a r3)
))

)
