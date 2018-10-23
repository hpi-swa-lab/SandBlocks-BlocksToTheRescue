initialization
initializeDefaultGameState
	| paddle |
	paddle := self paddleManager createEntityWith: {
		#positionResolver -> [self relativeMousePosition].
		#ballSpawner -> [:position | self spawnBallAt: position]} on: self.

	self 
		updateTickTime;
		startStepping.