testing
isNullable: anEProductionRule

	anEProductionRule do: [:each | (each isTerminal or: [(self includes: each symbol) not])
										ifTrue: [^ false]].
	^ true
	