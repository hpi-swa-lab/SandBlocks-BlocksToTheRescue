state machine editing
createState

	| name |
	name := self nextUnusedStateName in: [:defaultName |
		((UIManager default
			request: 'new state name'
			initialAnswer: defaultName)
				ifEmpty: [^ self]) asSymbol].
	(self stateMachineModel hasStateNamed: name)
		ifTrue: [^ self errorStateExists: name].
	self stateMachineModel addState: name.
	self update: #viewData.