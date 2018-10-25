entity-collision
handleBallCollision: aBOBall

	(self position dist: aBOBall position) > (self radius + aBOBall radius)
		ifTrue: [^ self].
	self movementVector: (self ballImpulse: aBOBall).