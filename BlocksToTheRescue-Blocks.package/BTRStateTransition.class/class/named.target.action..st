instance creation
named: messageSymbol target: targetStateSymbol action: aBlockOrSymbol

	^ (self named: messageSymbol)
		targetStateName: targetStateSymbol;
		action: aBlockOrSymbol;
		yourself