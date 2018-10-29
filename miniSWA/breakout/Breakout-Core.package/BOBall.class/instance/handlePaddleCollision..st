collision
handlePaddleCollision: aBOPaddle
	self halt.
	"self movementVector: (self paddleImpulse: (self relativeCenterXOffsetOf: aBOPaddle))."