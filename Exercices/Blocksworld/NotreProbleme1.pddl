; Blocks World Problem

; 4 blocks, 0 blocks empilés
(define (problem blocks-4-0)

    ; Definition du domaine avec des blocks
    (:domain blocks)

    ; Definition des objets : Les blocks a, b, c et d
    (:objects
        d b a c - block
    )

    ; Etat initial : les blocks sont sur la table et la main est vide
    (:init
        (clear c)
        (clear a)
        (clear b)
        (clear d)
        (ontable c)
        (ontable a)
        (ontable b)
        (ontable d)
        (handempty)
    )

    ; But : les blocks sont empilés dans l'ordre d, c, b, a
    (:goal
        (and (on d c) (on c b) (on b a)))
)