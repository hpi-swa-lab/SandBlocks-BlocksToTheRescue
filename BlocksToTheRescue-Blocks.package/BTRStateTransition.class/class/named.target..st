as yet unclassified
named: messageSymbol target: targetStateSymbol

	^ self basicNew
		name: messageSymbol;
		targetStateSelector: targetStateSymbol;
		initialize;
		yourself