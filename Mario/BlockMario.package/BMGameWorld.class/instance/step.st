stepping and presenter
step
	
	self isPaused ifFalse: 
		[self moveGameObjects.
		self simulateStep.
		self drawWorld.].