utility
nextSymbolFrom: anEState

	^ (self grammar ruleNumbered: anEState ruleNumber) 
		at: anEState next 
		ifAbsent: [nil]