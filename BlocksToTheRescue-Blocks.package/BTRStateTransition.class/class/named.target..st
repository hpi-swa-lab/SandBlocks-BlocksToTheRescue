as yet unclassified
named: messageSymbol target: targetStateSymbol

	^ self basicNew
		name: messageSymbol;
		targetStateName: targetStateSymbol;
		initialize;
		yourself