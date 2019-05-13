state machine editing
createState

	| name |
	name := self nextUnusedStateName in: [:defaultName |
		((UIManager default
			request: 'new state name'
			initialAnswer: defaultName)
			ifEmpty: [defaultName]) asSymbol].
	(self stateMachineModel hasStateNamed: name)
		ifTrue: [^ UIManager default inform: 'State named ''', name, ''' already exists'].
	self stateMachineModel addState: name.