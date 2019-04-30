printing
printStateNumbered: aNumber on: aStream
	
	aStream 
		nextPutAll: '=== ' , (aNumber - 1) asString, ' ==='; 
		cr.
	(self states at: aNumber) 
		printOn: aStream 
		usingGrammar: self grammar