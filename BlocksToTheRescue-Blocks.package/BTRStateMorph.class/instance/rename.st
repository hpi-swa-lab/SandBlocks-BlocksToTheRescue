state editing
rename

	| name |
	name := ((UIManager default
		request: 'new state name'
		initialAnswer: self state name)
			ifEmpty: [^ self]) asSymbol.
	(self state model hasStateNamed: name)
		ifTrue: [^ self stateMachineMorph errorStateExists: name].
	state rename: name.