accessing
addTransitionOn: messageSymbol from: firstStateSymbol to: secondStateSymbol

	(self stateNamed: firstStateSymbol)
		addTransitionNamed: messageSymbol
		target: secondStateSymbol.