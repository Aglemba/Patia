;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 4 Op-N-Puzzle
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (domain NPuzzle)
	; strips : probleme simple / typing : types des objets
	(:requirements :strips :typing)
	(:types
		tuile
	)
	(:predicates
		; la tuile t est positionnee en (x, y)
		(positionnee ?t - tuile ?x - int ?y - int)
		; position de la zone vide
		(zoneVide ?x - int ?y - int)
		; la tuile t est deplacable de (x1, y1) vers (x2, y2)
		(deplacable ?t - tuile ?x1 - int ?y1 - int ?x2 - int ?y2 - int)
	)

	; Deplacer une tuile
	(:action deplacerTuile
		:parameters (?t - tuile ?x1 - int ?y1 - int ?x2 - int ?y2 - int)
		:precondition (and (positionnee ?t ?x1 ?y1) (zoneVide ?x2 ?y2) (deplacable ?t ?x1 ?y1 ?x2 ?y2))
		:effect (and
			(positionnee ?t ?x2 ?y2)
			(zoneVide ?x1 ?y1)
			(not (zoneVide ?x2 ?y2)))
	)
)