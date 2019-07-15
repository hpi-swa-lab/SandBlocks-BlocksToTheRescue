*BlocksToTheRescue-Core
= anObject

	^anObject class == self class 
		and: [anObject hash = hash]
		and: [self string btrEquals: anObject string]