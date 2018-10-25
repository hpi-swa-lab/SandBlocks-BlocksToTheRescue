entity-collision
handlePaddleCollision: aBOPaddle

	self movementVector: "self movementVector
		+ "(self paddleImpulse: (self relativeCenterXOffsetOf: aBOPaddle)).