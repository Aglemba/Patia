;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 4 Op-blocks world
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (domain blocks)
  ; strips : probleme simple / typing : types des objets
  (:requirements :strips :typing)
  (:types block)
  (:predicates (on ?x - block ?y - block)
  			   (ontable ?x - block)
  			   (clear ?x - block)
  			   (handempty)
  			   (holding ?x - block))

  (:action pick-up
	     :parameters (?x - block)
	     :precondition (and (clear ?x) (ontable ?x) (handempty))
	     :effect
		 ; le bloc n'est plus sur la table
	     (and (not (ontable ?x))
	        
	       ; le bloc n est pas attrapable (quelque cose dessus)
		   (not (clear ?x))

		   ; le bras est vide
		   (not (handempty))

		   ; X est sur la table
		   (holding ?x)))

  (:action put-down
	     :parameters (?x - block)
	     :precondition (holding ?x)
	     :effect
	     (and (not (holding ?x))
		   (clear ?x)
		   (handempty)
		   (ontable ?x)))
  
  (:action stack
	     :parameters (?x - block ?y - block)
	     :precondition (and (holding ?x) (clear ?y))
	     :effect
	     (and (not (holding ?x))
		   (not (clear ?y))
		   (clear ?x)
		   (handempty)
		   (on ?x ?y)))
  
  (:action unstack
	     :parameters (?x - block ?y - block)
	     :precondition (and (on ?x ?y) (clear ?x) (handempty))
	     :effect
	     (and (holding ?x)
		   (clear ?y)
		   (not (clear ?x))
		   (not (handempty))
		   (not (on ?x ?y)))))
