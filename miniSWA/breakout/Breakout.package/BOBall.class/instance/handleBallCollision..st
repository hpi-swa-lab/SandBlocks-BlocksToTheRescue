collision
handleBallCollision: aBOBall
	self halt.

"	(self position dist: aBOBall position) > (self radius + aBOBall radius)
		ifTrue: [^ self].
	self movementVector: (self ballImpulse: aBOBall)."