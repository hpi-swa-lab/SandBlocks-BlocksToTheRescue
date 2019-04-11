accessing
addTransition: messageSymbol target: targetStateSymbol

	^ self transitions
		at: messageSymbol
		put: (BTRStateTransition named: messageSymbol target: targetStateSymbol)