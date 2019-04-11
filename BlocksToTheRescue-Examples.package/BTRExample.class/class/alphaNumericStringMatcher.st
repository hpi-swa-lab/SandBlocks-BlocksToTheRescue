as yet unclassified
alphaNumericStringMatcher

	| model validState |
	model := BTRStateMachineModel new.

	(model addState: #invalid)
		onUnknownTransitionDo: [].
	validState := (model addState: #valid)
		setAsStart;
		addTransitionNamed: #invalidate target: #invalid;
		onUnknownTransitionDo: [:symbol :state :machine |
			machine transition: #invalidate];
		yourself.

	($0 to: $9), ($A to: $Z), ($a to: $z) do: [:i |
		validState
			addTransitionNamed: i asSymbol
			target: #valid].

	^ model