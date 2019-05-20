tests
testSerializeStartState

	| model newModel |
	model := BTRStateMachineModel new.
	model addState: #a.
	(model addState: #start) setAsStart.
	self assert: model isValidStateGraph.
	self assert: (model stateNamed: #start) isStartState.

	newModel := BTRStateMachineModel new.
	newModel updateFromText: model serialized.
	self assert: newModel isValidStateGraph.
	self assert: (newModel stateNamed: #start) isStartState.