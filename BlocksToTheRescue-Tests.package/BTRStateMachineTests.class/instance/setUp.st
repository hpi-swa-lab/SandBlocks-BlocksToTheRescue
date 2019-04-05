running
setUp

	| model |
	model := self exampleModel.
	self assert: model isValidStateGraph.
	self theMachine: model start.