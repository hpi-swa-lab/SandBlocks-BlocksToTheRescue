accessing
createState

	| name |
	name := self nextUnusedStateName in: [:defaultName |
		((UIManager default
			request: 'new state name'
			initialAnswer: defaultName)
			ifEmpty: [defaultName]) asSymbol].
	(self addState: (self stateMachineModel addState: name))
		center: self menuClickPosition.