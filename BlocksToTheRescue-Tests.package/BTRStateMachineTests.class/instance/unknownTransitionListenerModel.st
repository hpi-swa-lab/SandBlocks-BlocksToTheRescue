models
unknownTransitionListenerModel

	| model |
	model := BTRStateMachineModel new.
	model setStart: #start.
	(model addState: #start)
		onUnknownTransitionDo: (self wrapInNotifier: []);
		addTransition: #transition to: #target.
	model addState: #target.

	^ model validateStateGraph