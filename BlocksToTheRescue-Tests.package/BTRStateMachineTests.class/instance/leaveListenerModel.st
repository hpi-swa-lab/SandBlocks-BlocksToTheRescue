models
leaveListenerModel

	| model |
	model := BTRStateMachineModel new.
	model setStart: #start.
	(model addState: #start)
		onLeaveDo: (self wrapInNotifier: []);
		addTransitionNamed: #transition target: #target.
	model addState: #target.

	^ model validateStateGraph