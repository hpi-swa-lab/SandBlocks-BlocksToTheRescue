models
enterListenerModel

	| model |
	model := BTRStateMachineModel new.
	model setStart: #start.
	(model addState: #start)
		addTransitionNamed: #transition target: #target.
	(model addState: #target)
		onEnterDo: (self wrapInNotifier: []).

	^ model validateStateGraph