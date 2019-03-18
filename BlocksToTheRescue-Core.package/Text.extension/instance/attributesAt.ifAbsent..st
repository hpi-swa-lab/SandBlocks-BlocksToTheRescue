*BlocksToTheRescue-Core
attributesAt: anInteger ifAbsent: aBlockClosure

	^ (anInteger > 0 and: [anInteger <= self size])
		ifTrue: [self attributesAt: anInteger]
		ifFalse: [aBlockClosure value]