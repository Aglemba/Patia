; Notre Problem NPuzzle
(define (problem npuzzle_probleme)

    ; Definition du domaine pour des NPuzzle
    (:domain NPuzzle)

    ; Definition des objets : les 8 tuiles
    (:objects
        Un_Un Un_Deux Un_Trois Deux_Un Deux_Deux Deux_Trois Trois_Un Trois_Deux Trois_Trois - position
        tuile1 tuile2 tuile3 tuile4 tuile5 tuile6 tuile7 tuile8 libre - tuile
    )

    ; Etat initial : tuiles dans le désordre
    (:init
        ; Les tuiles sont dans la configuration suivante :
        ;      1   2   3   
        ;   +-------------+
        ; 1 | Tu1 Tu2 Tu3 |
        ; 2 | Tu4 Tu5 Tu6 |
        ; 3 | Tu7 Tu8 Lib |
        ;   +-------------+
        ;
        (positionnee Un_Un tuile1)
        (positionnee Un_Deux tuile2)
        (positionnee Un_Trois tuile3)
        (positionnee Deux_Un tuile4)
        (positionnee Deux_Deux tuile5)
        (positionnee Deux_Trois tuile6)
        (positionnee Trois_Un tuile7)
        (positionnee Trois_Deux tuile8)
        (positionnee Trois_Trois libre)

        ; Definition des mouvements possibles pour chaque tuile
        ; Deplacement de la tuile 1 : vers la droite ou vers le bas
        (permuter Un_Un Un_Deux)
        (permuter Un_Un Deux_Un)

        ; Deplacement de la tuile 2 : vers la gauche, la droite ou vers le bas
        ; (permuter Un_Deux Un_Un) deja fait dans le cas de la tuile 1
        (permuter Un_Deux Un_Trois)
        (permuter Un_Deux Deux_Deux)

        ; Deplacement de la tuile 3 : vers la gauche ou vers le bas
        (permuter Un_Trois Un_Deux)
        (permuter Un_Trois Deux_Trois)

        ; Deplacement de la tuile 4 : vers le haut, la droite ou vers le bas
        ; (permuter Deux_Un Un_Un) deja fait dans le cas de la tuile 1
        (permuter Deux_Un Deux_Deux)
        (permuter Deux_Un Trois_Un)

        ; Deplacement de la tuile 5 : vers le haut, la gauche, la droite ou vers le bas
        ; (permuter Deux_Deux Un_Deux) deja fait dans le cas de la tuile 2
        ; (permuter Deux_Deux Deux_Un) deja fait dans le cas de la tuile 4
        (permuter Deux_Deux Deux_Trois)
        (permuter Deux_Deux Trois_Deux)

        ; Deplacement de la tuile 6 : vers le haut, la gauche ou vers le bas
        ; (permuter Deux_Trois Un_Trois) deja fait dans le cas de la tuile 3
        ; (permuter Deux_Trois Deux_Deux) deja fait dans le cas de la tuile 5
        (permuter Deux_Trois Trois_Trois)

        ; Deplacement de la tuile 7 : vers le haut ou vers la droite
        ; (permuter Trois_Un Deux_Un) deja fait dans le cas de la tuile 4
        (permuter Trois_Un Trois_Deux)

        ; Deplacement de la tuile 8 : vers le haut, la gauche ou vers la droite
        ; (permuter Trois_Deux Deux_Deux) deja fait dans le cas de la tuile 5
        ; (permuter Trois_Deux Trois_Un) deja fait dans le cas de la tuile 7
        (permuter Trois_Deux Trois_Trois)

        ; Deplacement de la tuile libre : vers le haut, la gauche, la droite ou vers le bas
        ; (permuter Trois_Trois Deux_Trois) deja fait dans le cas de la tuile 6
        ; (permuter Trois_Trois Trois_Deux) deja fait dans le cas de la tuile 8
    )

    ; But : Les tuiles sont dans l'ordre
    (:goal
        ; Les tuiles sont dans la configuration suivante :
        ;      1   2   3    // X
        ;   +-------------+
        ; 1 | Tu1 Tu4 Tu7 |
        ; 2 | Tu2 Tu5 Tu8 |
        ; 3 | Tu3 Tu6 -X- |
        ;   +-------------+
        ; Y
        ;
        (and (positionnee Un_Un tuile1) (positionnee Deux_Un tuile4) (positionnee Trois_Un tuile7)
            (positionnee Un_Deux tuile2) (positionnee Deux_Deux tuile5) (positionnee Trois_Deux tuile8)
            (positionnee Un_Trois tuile3) (positionnee Deux_Trois tuile6) (positionnee Trois_Trois libre))
    )
)