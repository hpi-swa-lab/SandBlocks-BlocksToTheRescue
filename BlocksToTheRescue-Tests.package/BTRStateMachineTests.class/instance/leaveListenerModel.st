models
leaveListenerModel

	| model |
	model := BTRStateMachineModel new.
	model setStart: #start.
	(model addState: #start)
		onLeaveDo: (self wrapInNotifier: []);
		addTransition: #transition to: #target.
	model addState: #target.

	^ model validateStateGraph