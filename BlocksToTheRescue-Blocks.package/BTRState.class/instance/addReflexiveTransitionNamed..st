accessing
addReflexiveTransitionNamed: messageSymbol

	^ self addTransitionNamed: messageSymbol target: self name action: nil