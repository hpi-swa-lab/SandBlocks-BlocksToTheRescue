models
stateChangeModel

	| model |
	model := BTRStateMachineModel new.
	model setStart: #start.
	(model addState: #start)
		addTransitionNamed: #transition target: #target action: [#hello];
		addTransitionNamed: #reset target: #start.
	model addState: #target.

	^ model validateStateGraph