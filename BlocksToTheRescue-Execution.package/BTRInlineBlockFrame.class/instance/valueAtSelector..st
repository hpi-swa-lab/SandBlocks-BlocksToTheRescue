as yet unclassified
valueAtSelector: aSymbol

	| tempName |
	tempName := (self atSelector: aSymbol) asString.
	^ (self executionContext 
		tempAt: (self executionContext tempNames 
			indexOf: tempName
			ifAbsent: [self error: 'Unknown temp: ', tempName])).