; Notre Problem NPuzzle
(define (problem npuzzle_probleme)

    ; Definition du domaine pour des NPuzzle
    (:domain NPuzzle)

    ; Definition des objets : les 8 tuiles
    (:objects Un_Un Un_Deux Un_Trois Deux_Un Deux_Deux Deux_Trois Trois_Un Trois_Deux Trois_Trois - position
            tuile_A tuile_B tuile_C tuile_D tuile_E tuile_F tuile_G tuile_H - tuile
    )

    ; Etat initial : tuiles dans le désordre
    (:init
        ; Les tuiles sont dans la configuration suivante :
        ;      1   2   3   
        ;   +-------------+
        ; 1 | TuA TuB TuF |
        ; 2 | TuG TuC TuD |
        ; 3 | Lib TuE TuH |
        ;   +-------------+
        ;
        (positionnee Un_Un tuile_A)
        (positionnee Un_Deux tuile_B)
        (positionnee Un_Trois tuile_F)
        (positionnee Deux_Un tuile_G)
        (positionnee Deux_Deux tuile_C)
        (positionnee Deux_Trois tuile_D)
        (positionnee Trois_Un libre)
        (positionnee Trois_Deux tuile_E)
        (positionnee Trois_Trois tuile_H)

        ; Definition des mouvements possibles pour chaque tuile
        ; Deplacement de la tuile A : vers la droite ou vers le bas
        (permuter Un_Un Un_Deux)
        (permuter Un_Un Deux_Un)
        
        ; Deplacement de la tuile B : vers la gauche, la droite ou vers le bas
        ; (permuter Un_Deux Un_Un) deja fait dans le cas de la tuile A
        (permuter Un_Deux Un_Trois)
        (permuter Un_Deux Deux_Deux)

        ; Deplacement de la tuile F : vers la gauche ou vers le bas
        (permuter Un_Trois Un_Deux)
        (permuter Un_Trois Deux_Trois)

        ; Deplacement de la tuile G : vers le haut, la droite ou vers le bas
        ; (permuter Deux_Un Un_Un) deja fait dans le cas de la tuile A
        (permuter Deux_Un Deux_Deux)
        (permuter Deux_Un Trois_Un)

        ; Deplacement de la tuile C : vers le haut, la gauche, la droite ou vers le bas
        ; (permuter Deux_Deux Un_Deux) deja fait dans le cas de la tuile B
        ; (permuter Deux_Deux Deux_Un) deja fait dans le cas de la tuile G
        (permuter Deux_Deux Deux_Trois)
        (permuter Deux_Deux Trois_Deux)

        ; Deplacement de la tuile D : vers le haut, la gauche ou vers le bas
        ; (permuter Deux_Trois Un_Trois) deja fait dans le cas de la tuile F
        ; (permuter Deux_Trois Deux_Deux) deja fait dans le cas de la tuile C
        (permuter Deux_Trois Trois_Trois)

        ; Deplacement de la tuile libre : vers le haut ou vers la droite
        ; (permuter Trois_Un Deux_Un) deja fait dans le cas de la tuile G
        (permuter Trois_Un Trois_Deux)
        
        ; Deplacement de la tuile E : vers le haut, la gauche ou vers la droite
        ; (permuter Trois_Deux Deux_Deux) deja fait dans le cas de la tuile C
        ; (permuter Trois_Deux Trois_Un) deja fait dans le cas de la tuile libre
        (permuter Trois_Deux Trois_Trois)

        ; Deplacement de la tuile H : vers le haut ou vers la gauche
        ; (permuter Trois_Trois Deux_Trois) deja fait dans le cas de la tuile D
        ; (permuter Trois_Trois Trois_Deux) deja fait dans le cas de la tuile E
    )

    ; But : Les tuiles sont dans l'ordre
    (:goal
        ; Les tuiles sont dans la configuration suivante :
        ;      1   2   3    // X
        ;   +-------------+
        ; 1 | TuA TuB TuC |
        ; 2 | TuD TuE TuF |
        ; 3 | TuG TuH Lib |
        ;   +-------------+
        ; Y
        ;
        (and (positionnee Un_Un tuile_A)
             (positionnee Un_Deux tuile_B)
             (positionnee Un_Trois tuile_C)
             (positionnee Deux_Un tuile_D)
             (positionnee Deux_Deux tuile_E)
             (positionnee Deux_Trois tuile_F)
             (positionnee Trois_Un tuile_G)
             (positionnee Trois_Deux tuile_H)
             (positionnee Trois_Trois libre)
        )
    )
)