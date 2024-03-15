;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 4 Op-NPuzzle
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (domain NPuzzle)
	; strips : probleme simple / typing : types des objets
	(:requirements :strips :typing)
	(:types tuile position)
	(:constants libre - tuile)

	(:predicates
		; la tuile t est positionnee a la position x
		(positionnee ?x - position ?t - tuile)
		; permuter les positions de deux tuiles
		(permuter ?x - position ?y - position))

	; Deplacer une tuile
	(:action deplacerTuile
		:parameters (?t - tuile ?depuis - position ?vers - position)
		:precondition (and (positionnee ?depuis ?t) (positionnee ?vers libre) (permuter ?depuis ?vers))
		:effect (and (positionnee ?vers ?t)
					(positionnee ?depuis libre)
					(not (positionnee ?depuis ?t))
					(not (positionnee ?vers libre))))
	
	; Pas d'operation
	(:action rienAFaire
		:parameters (?depuis - position ?vers - position)
		:precondition (and (permuter ?depuis ?vers))
		:effect (and (not (permuter ?depuis ?vers))))
)