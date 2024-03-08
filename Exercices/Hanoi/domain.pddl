;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 4 Op-Hanoi
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (domain hanoi)
	; strips : probleme simple / typing : types des objets
	(:requirements :strips :typing)
	(:types
		object stack
	)
	(:predicates
		; on empile le object x sur le object y
		(on ?x - object ?y - object)
		; on empile le object x sur la pile p
		(onstack ?x - object ?p - stack)
		; le object x n'a rien au dessus de lui
		(clear ?x - object)
		; le bras est vide
		(handempty)
		; le bras tient un object
		(holding ?x - object)
		; le object x est plus petit que le object y
		(smaller ?x - object ?y - object)
	)

	; Recuperation du object x sur la pile p
	(:action pick-up
		:parameters (?x - object ?p - stack)
		:precondition (and (clear ?x) (onstack ?x ?p) (handempty))
		:effect (and (holding ?x)
			(clear ?p)
			(not (clear ?x))
			(not (handempty))
			(not (onstack ?x ?p)))
	)

	; Depose le object x sur la pile p
	(:action put-down
		:parameters (?x - object ?p - stack)
		:precondition (and (holding ?x) (clear ?p))
		:effect (and (not (holding ?x))
			(not (clear ?p))
			(clear ?x)
			(handempty)
			(onstack ?x ?p))
	)

	; Empile le object x sur le object y
	(:action stack
		:parameters (?x - object ?y - object)
		:precondition (and (holding ?x) (clear ?y) (smaller ?x ?y))
		:effect (and (not (holding ?x))
			(not (clear ?y))
			(clear ?x)
			(handempty)
			(on ?x ?y))
	)

	; Depile le object x depuis le object y
	(:action unstack
		:parameters (?x - object ?y - object)
		:precondition (and (clear ?x) (on ?x ?y) (handempty))
		:effect (and (not (on ?x ?y))
			(not (clear ?x))
			(not (handempty))
			(holding ?x)
			(clear ?y))
	)
)