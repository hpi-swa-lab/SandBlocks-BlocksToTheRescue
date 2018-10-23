initialize-release
initializeFrom: entityConfigDict
	
	super initializeFrom: entityConfigDict.
	self ballSpawner ifNotNil: [self initializeBall].