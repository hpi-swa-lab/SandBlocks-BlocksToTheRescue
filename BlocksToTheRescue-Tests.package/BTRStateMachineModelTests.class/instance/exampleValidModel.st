as yet unclassified
exampleValidModel

	| model |
	model := BTRStateMachineModel new.
	(model addState: #start)
		onEnterDo: (self wrapInNotifier: []);
		onLeaveDo: (self wrapInNotifier: []).
	(model addState: #b)
		onEnterDo: (self wrapInNotifier: []).
	model addTransitionOn: #foo from: #start to: #b.
	model setStart: #start.
	^ model