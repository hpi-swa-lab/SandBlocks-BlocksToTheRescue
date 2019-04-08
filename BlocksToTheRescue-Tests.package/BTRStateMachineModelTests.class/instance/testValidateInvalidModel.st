as yet unclassified
testValidateInvalidModel

	| model |
	model := BTRStateMachineModel new.
	self deny: model isValidStateGraph.

	model addState: #start.
	model setStart: #start.
	self assert: model isValidStateGraph.

	model setStart: #end.
	self deny: model isValidStateGraph.
	model setStart: #start.

	model addState: #b.
	self assert: model isValidStateGraph.

	self should: [model addTransitionOn: #foo from: #end to: #b] raise: BTRInvalidStateMachineException.