printing
printOn: aStream for: anEGrammar

	| productionRule |
	productionRule := anEGrammar ruleCollection at: self ruleNumber.
	aStream
		nextPutAll: productionRule name;
		nextPutAll: ' =>'.
	productionRule symbols 
		doWithIndex: [:each :index | 
					aStream space.
					each printOn: aStream].
	aStream 
		space;
		nextPut: $(;
		nextPutAll: (self end - 1) asString;
		nextPut: $)