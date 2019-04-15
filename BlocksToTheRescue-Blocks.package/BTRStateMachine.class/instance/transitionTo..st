running
transitionTo: aBTRStateOrSymbol

	^ aBTRStateOrSymbol isSymbol
		ifTrue: [self transitionToSymbol: aBTRStateOrSymbol]
		ifFalse: [self transitionToState: aBTRStateOrSymbol via: nil]