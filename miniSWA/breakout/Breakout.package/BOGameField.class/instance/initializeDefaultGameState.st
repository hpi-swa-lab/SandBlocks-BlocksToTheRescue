initialization
initializeDefaultGameState
	| paddle |
	paddle := self paddleManager createEntityWith: {
		#positionResolver -> [self relativeMousePosition].
		#ballSpawner -> [self spawnBall]} on: self.

	self 
		updateTickTime;
		startStepping.