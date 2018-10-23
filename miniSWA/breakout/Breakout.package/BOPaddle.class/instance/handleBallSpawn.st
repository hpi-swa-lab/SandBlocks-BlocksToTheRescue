entity-ops
handleBallSpawn

	self ballEntity
		ifNil: [self initializeBall]
		ifNotNil: [self releaseBall].