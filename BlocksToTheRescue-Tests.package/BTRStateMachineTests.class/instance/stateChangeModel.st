models
stateChangeModel

	| model |
	model := BTRStateMachineModel new.
	model setStart: #start.
	(model addState: #start)
		addTransition: #transition to: #target.
	model addState: #target.

	^ model validateStateGraph