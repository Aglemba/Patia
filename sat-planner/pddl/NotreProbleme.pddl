; Notre Problem Hanoi

(define (problem hanoi_probleme)

    ; Definition du domaine pour des hanoi
    (:domain hanoi)

    ; Definition des objets : les objects et les piles
    (:objects
        bleu blanc rouge - object
        left middle right - stack
    )

    ; Etat initial : Pile de gauche avec les 3 objets empilés du haut vers le bas, bleu, blanc, rouge
    (:init
        (smaller bleu blanc)
        (smaller bleu rouge)
        (smaller blanc rouge)

        (onstack rouge left)
        (on blanc rouge)
        (on bleu blanc)

        (clear bleu)
        (clear middle)
        (clear right)

        (handempty)
    )

    ; But : Pile de droite avec les 3 objets empilés du haut vers le bas, bleu, blanc, rouge
    (:goal
        (and (onstack rouge right)
            (on blanc rouge)
            (on bleu blanc))
    )
)