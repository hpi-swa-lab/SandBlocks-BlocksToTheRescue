initialization
initialize

	super initialize.
	
	self
		updateTickTime;
		brickManager: (BOEntityManager newFor: BOBrick);
		paddleManager: (BOEntityManager newFor: BOPaddle);
		ballManager: (BOEntityManager newFor: BOBall);
		startStepping.