;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;     Exercice 2 : Blocksworld     ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Définition du problème Blocksworld
(define (problem blocks-4-0)

    ; Définition du domaine utilisé : "blocks"
    (:domain blocks)

    ; Définition des objets utilisés
    (:objects
        ; a, b, c et d sont de type "block"
        a b c d - block
    )

    ; Initialisation du problème Blocksworld
    ;  
    ;           | 
    ;           |
    ;       +---+---+
    ;      /         \
    ;      \         /
    ;   
    ;
    ;
    ;       +-------+ +-------+ +-------+ +-------+
    ;       |   c   | |   a   | |   b   | |   d   |
    ;       +-------------------------------------+
    ;       |                TABLE                |
    ;       +-------------------------------------+
    ;
    (:init
        
        ; Le block "c" est attrapable par le bras
        (clear c)

        ; Le block "a" est attrapable par le bras
        (clear a)

        ; Le block "b" est attrapable par le bras
        (clear b)

        ; Le block "d" est attrapable par le bras
        (clear d)

        ; Le block "c" est sur la table
        (ontable c)

        ; Le block "a" est sur la table
        (ontable a)

        ; Le block "b" est sur la table
        (ontable b)

        ; Le block "d" est sur la table
        (ontable d)

        ; Le bras est vide
        (handempty)
    )

    ; But Final du problème Blocksworld
    ;  
    ;           | 
    ;           |
    ;       +---+---+
    ;      /         \
    ;      \         /
    ;   
    ;       +-------+
    ;       |   d   |
    ;       +-------+
    ;       |   c   |
    ;       +-------+
    ;       |   b   |
    ;       +-------+
    ;       |   a   |
    ;       +-------------------+
    ;       |       TABLE       |
    ;       +-------------------+
    ;
    (:goal
        (and
            
            ; Le block "d" est sur le block "c"
            (on d c)
            
            ; Le block "c" est sur le block "b"
            (on c b)
            
            ; Le block "b" est sur le block "a"
            (on b a)
        )
    )
)