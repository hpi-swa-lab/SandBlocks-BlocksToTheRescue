initialize-release
configure: aDictionary

	super configure: aDictionary.
	self positionResolver: (aDictionary at: #positionResolver).
	self ballSpawner: (aDictionary at: #ballSpawner ifAbsent: nil).