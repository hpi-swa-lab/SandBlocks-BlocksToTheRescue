collision
handlePaddleCollision: aBOCollisionResult

	self movementVector: (self paddleImpulse: (self relativeCenterXOffsetOf: aBOCollisionResult)).