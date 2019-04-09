as yet unclassified
testValidateValidModel

	| model |
	model := BTRStateMachineModel new.
	self deny: model isValidStateGraph.

	model setStart: #start.
	self deny: model isValidStateGraph.
	
	model addState: #start.
	self assert: model isValidStateGraph.

	model addState: #b.
	self assert: model isValidStateGraph.

	model addTransitionOn: #foo from: #start to: #b.
	self assert: model isValidStateGraph.