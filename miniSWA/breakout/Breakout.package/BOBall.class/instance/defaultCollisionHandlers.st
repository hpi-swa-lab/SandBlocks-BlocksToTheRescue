constants
defaultCollisionHandlers

	^ {
		BOGameFieldBounds -> [:gfbounds | self handleBoundsCollision: gfbounds bounds].
		BOPaddle -> [:paddle | self handlePaddleCollision: paddle].
		BOBall -> [:ball | self handleBallCollision: ball]}