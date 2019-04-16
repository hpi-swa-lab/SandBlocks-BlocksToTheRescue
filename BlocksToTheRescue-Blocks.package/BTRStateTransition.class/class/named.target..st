instance creation
named: messageSymbol target: targetStateSymbol

	^ (self named: messageSymbol)
		targetStateName: targetStateSymbol;
		yourself