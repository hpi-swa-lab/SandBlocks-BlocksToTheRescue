models
enterListenerModel

	| model |
	model := BTRStateMachineModel new.
	model setStart: #start.
	(model addState: #start)
		addTransition: #transition to: #target.
	(model addState: #target)
		onEnterDo: (self wrapInNotifier: []).

	^ model validateStateGraph