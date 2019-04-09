accessing
addTransitionOn: messageSymbol from: firstStateSymbol to: secondStateSymbol

	(self stateNamed: firstStateSymbol)
		addTransition: messageSymbol
		to: secondStateSymbol.