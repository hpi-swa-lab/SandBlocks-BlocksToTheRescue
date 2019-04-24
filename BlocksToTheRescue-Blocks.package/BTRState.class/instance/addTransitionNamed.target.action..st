accessing
addTransitionNamed: messageSymbol target: targetStateSymbol action: aBlockOrSymbol

	^ self transitions
		at: messageSymbol
		put: (BTRStateTransition named: messageSymbol target: targetStateSymbol action: aBlockOrSymbol)