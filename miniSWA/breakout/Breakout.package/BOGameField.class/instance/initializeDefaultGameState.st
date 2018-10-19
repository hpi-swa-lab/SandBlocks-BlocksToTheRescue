initialization
initializeDefaultGameState

	self paddleManager createEntityWith: (IdentityDictionary withAll: {
		#positionResolver -> [self relativeMousePosition]}) on: self.

	self 
		updateTickTime;
		startStepping.