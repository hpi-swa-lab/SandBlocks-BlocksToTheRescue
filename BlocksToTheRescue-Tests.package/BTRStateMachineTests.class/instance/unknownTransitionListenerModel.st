models
unknownTransitionListenerModel

	| model |
	model := BTRStateMachineModel new.
	model setStart: #start.
	(model addState: #start)
		onUnknownTransitionDo: (self wrapInNotifier: []);
		addTransitionNamed: #transition target: #target.
	model addState: #target.

	^ model validateStateGraph