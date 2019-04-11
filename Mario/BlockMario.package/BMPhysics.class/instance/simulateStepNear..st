simulation
simulateStepNear: aPoint

	self applyGravity.
	self applyCollisionsNear: aPoint.
	self moveGameObjects.