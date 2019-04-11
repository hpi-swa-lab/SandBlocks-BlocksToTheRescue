models
stateChangeModel

	| model |
	model := BTRStateMachineModel new.
	model setStart: #start.
	(model addState: #start)
		addTransitionNamed: #transition target: #target;
		addTransitionNamed: #reset target: #start.
	model addState: #target.

	^ model validateStateGraph