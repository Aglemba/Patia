; Notre Problem NPuzzle

(define (problem npuzzle_probleme)

    ; Definition du domaine pour des NPuzzle
    (:domain NPuzzle)

    ; Definition des objets : les 8 tuiles
    (:objects
        tuile1 tuile2 tuile3 tuile4 tuile5 tuile6 tuile7 tuile8 - tuile
    )

    ; Etat initial : tuiles dans le désordre
    (:init
        ; Les tuiles sont dans la configuration suivante :
        ;      1   2   3    // X
        ;   +-------------+
        ; 1 | Tu1 Tu2 Tu3 |
        ; 2 | Tu4 Tu5 Tu6 |
        ; 3 | Tu7 Tu8 -X- |
        ;   +-------------+
        ; Y
        ;
        (positionnee tuile1 1 1) (positionnee tuile2 2 1) (positionnee tuile3 3 1)
        (positionnee tuile4 1 2) (positionnee tuile5 2 2) (positionnee tuile6 3 2)
        (positionnee tuile7 1 3) (positionnee tuile8 2 3) (zoneVide 3 3)

        ; Definition des mouvements possibles pour chaque tuile

        ; Deplacement de la tuile 1 : vers la droite ou vers le bas
        (deplacable tuile1 1 1 2 1) (deplacable tuile1 1 1 1 2)
        ; Deplacement de la tuile 2 : vers la gauche, la droite ou vers le bas
        (deplacable tuile2 2 1 1 1) (deplacable tuile2 2 1 3 1) (deplacable tuile2 2 1 2 2)
        ; Deplacement de la tuile 3 : vers la gauche ou vers le bas
        (deplacable tuile3 3 1 2 1) (deplacable tuile3 3 1 3 2)
        ; Deplacement de la tuile 4 : vers le haut, la droite ou vers le bas
        (deplacable tuile4 1 2 1 1) (deplacable tuile4 1 2 2 2) (deplacable tuile4 1 2 1 3)
        ; Deplacement de la tuile 5 : vers le haut, la gauche, la droite ou vers le bas
        (deplacable tuile5 2 2 2 1) (deplacable tuile5 2 2 1 2) (deplacable tuile5 2 2 3 2) (deplacable tuile5 2 2 2 3)
        ; Deplacement de la tuile 6 : vers le haut, la gauche ou vers le bas
        (deplacable tuile6 3 2 3 1) (deplacable tuile6 3 2 2 2) (deplacable tuile6 3 2 3 3)
        ; Deplacement de la tuile 7 : vers le haut ou vers la droite
        (deplacable tuile7 1 3 1 2) (deplacable tuile7 1 3 2 3)
        ; Deplacement de la tuile 8 : vers le haut, la gauche ou vers la droite
        (deplacable tuile8 2 3 2 2) (deplacable tuile8 2 3 1 3) (deplacable tuile8 2 3 3 3)
  
        ; Definition des voisins de chaque tuile
        (voisin tuile1 tuile2) (voisin tuile1 tuile4)
        (voisin tuile2 tuile1) (voisin tuile2 tuile3) (voisin tuile2 tuile5)
        (voisin tuile3 tuile2) (voisin tuile3 tuile6)
        (voisin tuile4 tuile1) (voisin tuile4 tuile5) (voisin tuile4 tuile7)
        (voisin tuile5 tuile2) (voisin tuile5 tuile4) (voisin tuile5 tuile6) (voisin tuile5 tuile8)
        (voisin tuile6 tuile3) (voisin tuile6 tuile5)
        (voisin tuile7 tuile4) (voisin tuile7 tuile8)
        (voisin tuile8 tuile5) (voisin tuile8 tuile7)
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
        (and
        (positionnee tile1 1 1) (positionnee tile4 2 1) (positionnee tile7 3 1)
        (positionnee tile2 1 2) (positionnee tile5 2 2) (positionnee tile8 3 2)
        (positionnee tile3 1 3) (positionnee tile6 2 3) (zoneVide 3 3))
)