collision
handlePaddleCollision: aBOCollisionResult
	Transcript showln: aBOCollisionResult.
	"self halt."
	"self movementVector: (self paddleImpulse: (self relativeCenterXOffsetOf: aBOPaddle))."