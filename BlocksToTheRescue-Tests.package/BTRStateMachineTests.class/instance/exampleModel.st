running
exampleModel

	| model |
	model := BTRStateMachineModel new.
	(model addState: #start)
		onEnterDo: (self wrapInNotifier: []).
	model addState: #someTargetNode.
	model addTransitionOn: #foo from: #start to: #someTargetNode.
	model setStart: #start.

	model addState: #enterListenerStartState.
	(model addState: #enterListenerTargetState)
		onEnterDo: (self wrapInNotifier: []).
	model addTransitionOn: #transition from: #enterListenerStartState to: #enterListenerTargetState.

	(model addState: #leaveListenerState)
		onLeaveDo: (self wrapInNotifier: []).
	model addTransitionOn: #transition from: #leaveListenerState to: #someTargetNode.

	^ model