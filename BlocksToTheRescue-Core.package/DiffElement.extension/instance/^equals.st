*BlocksToTheRescue-Core
= anObject

	^anObject class == self class 
		and: [anObject hash = hash]
		and: [anObject string = string]
		and: [self runsEqual: anObject string runs]