models
startOnlyModel

	| model |
	model := BTRStateMachineModel new.
	model setStart: #start.
	(model addState: #start)
		onEnterDo: (self wrapInNotifier: []).
	
	^ model validateStateGraph