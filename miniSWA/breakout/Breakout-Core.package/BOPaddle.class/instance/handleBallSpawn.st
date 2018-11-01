actions
handleBallSpawn

	self ballEntity
		ifNil: [self createBall]
		ifNotNil: [self releaseBall].