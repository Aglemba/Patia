(define (domain SatSolver)

(:requirements :strips :typing)
(:types 
	clause 
	variable
)

(:predicates 
	(isTrueInClause ?x - variable ?y - clause)
	(isFalseInClause ?x - variable ?y - clause)
	(isTrueVariable ?x - variable)
	(isFalseVariable ?x - variable)
	(isClauseSolved ?x - clause)
	(hasNoValue ?x - variable)

)

(:action putVariableToTrue
	:parameters (?v - variable)
	:precondition (and
			(hasNoValue ?v) 
	)
	:effect (and 
			(not (hasNoValue ?v))
			(isTrueVariable ?v))
)

(:action putVariableToFalse
	:parameters (?v - variable)
	:precondition (and
			(hasNoValue ?v) 
	)
	:effect (and 
			(not (hasNoValue ?v))
			(isFalseVariable ?v)
			)
)

(:action solveClauseByTrue
	:parameters (?c - clause ?v - variable)
	:precondition (and 
			(isTrueInClause ?v ?c)
			(isTrueVariable ?v)
			)
	:effect (and 
			(isClauseSolved ?c))
)

(:action solveClauseByFalse
	:parameters (?c - clause ?v - variable)
	:precondition (and 
			(isFalseVariable ?v)
			(isFalseInClause ?v ?c)
			)
	:effect (and 
			(isClauseSolved ?c))
)

)