as yet unclassified
alphaNumericStringMatcher

	| model |
	model := BTRStateMachineModel new.

	(model addState: #invalid)
		onUnknownTransitionDo: [].
	(model addState: #valid)
		setAsStart;
		addTransitionNamed: #invalidate target: #invalid;
		onUnknownTransitionDo: [:symbol :state :machine |
			machine transition: #invalidate];
		addTransitionNamed: (
			($0 to: $9), ($A to: $Z), ($a to: $z)
				collect: [:i | i asSymbol])
			target: #valid.

	^ model