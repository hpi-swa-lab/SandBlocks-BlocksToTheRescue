simulation
applyGravity

	self movingGameObjects do: [:each | each addVelocity: self gravity].