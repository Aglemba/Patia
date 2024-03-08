; Notre Problem Blocksworld

(define (problem blocks_probleme)

    ; Definition du domaine pour des blocks
    (:domain blocks)

    ; Definition des objets : Les blocks a, b, c et d
    (:objects
        d b a c - block
    )

    ; Etat initial : les blocks sont empilés dans l'ordre a, b, c, d
    (:init
        (clear a)
        (on a b)
        (on b c)
        (on c d)
        (ontable d)
        (handempty)
    )

    ; But : les blocks sont empilés dans l'ordre a, d, c, b
    (:goal
        (and (on a d) (on d c) (on c b)))
)