;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Pursuit Evasion
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (domain pursuit-evasion)
	(:requirements :strips :typing)
	(:types
		node
		pursuer
	)
	(:predicates
		(has-pursuer ?p - pursuer ?n - node)
		(is-free ?n - node)
		(are-adjacent ?a - node ?b - node)
		(has-infected-neighbor ?n - node)
	)

	(:action move-pursuer
		:parameters (?p - pursuer ?from - node ?to - node)
		:precondition (and
			(are-adjacent ?from ?to)
			(has-pursuer ?p ?from)
		)
		:effect ()
	)
)
