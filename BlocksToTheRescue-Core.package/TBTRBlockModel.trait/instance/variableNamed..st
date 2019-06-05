interface-evaluating
variableNamed: aString

	^ (self executionContext 
		tempAt: (self executionContext tempNames 
			indexOf: aString
			ifAbsent: [self error: 'Unknown temp: ', aString])).