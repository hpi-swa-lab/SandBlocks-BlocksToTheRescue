instance creation
named: messageSymbol source: sourceStateSymbol target: targetStateSymbol action: aBlockOrSymbol

	^ (self named: messageSymbol source: sourceStateSymbol)
		targetStateName: targetStateSymbol;
		action: aBlockOrSymbol;
		yourself