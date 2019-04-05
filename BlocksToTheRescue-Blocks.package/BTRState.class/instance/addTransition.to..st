accessing
addTransition: messageSymbol to: targetStateSymbol

	^ self transitions
		at: messageSymbol
		put: (BTRStateTransition named: messageSymbol target: targetStateSymbol)