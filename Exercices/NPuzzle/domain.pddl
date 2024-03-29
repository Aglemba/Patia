;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; taquin
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (domain NPuzzle)

  (:requirements :strips :typing)
  (:types tuile position)
  (:constants libre - tuile)

  (:predicates
		; la tuile t est positionnee a la position x
		(positionnee ?x - position ?y - tuile)

		; permuter les positions de deux tuiles
	    (permuter ?x - position ?y - position)
  )

 ; Deplacer une tuile "t" de la position "depuis" a la position "vers"
 (:action deplacerTuile
	     :parameters (?t - tuile ?depuis - position ?vers - position)
	     :precondition (and (positionnee ?depuis ?t) (positionnee ?vers libre) (permuter ?depuis ?vers))
	     :effect (and (positionnee ?vers ?t)
	     			  (positionnee ?depuis libre)
	     			  (not (positionnee ?depuis ?t))
	     			  (not (positionnee ?vers libre))
	     		 )
 )

  ; Permuter les positions de deux tuiles
  (:action permuterPositions
	     :parameters (?depuis - position ?vers - position)
	     :precondition (and (permuter ?depuis ?vers))
	     :effect (and (permuter ?vers ?depuis)))
)