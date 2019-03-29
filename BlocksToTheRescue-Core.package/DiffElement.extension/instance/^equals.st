*BlocksToTheRescue-Core
= anObject

	^anObject class == self class and: [
		anObject hash = hash and: [
			anObject string = string and: [
				anObject string runs = string runs]]]