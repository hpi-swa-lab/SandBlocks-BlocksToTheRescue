constants
defaultCollisionHandlers

	^ {BOGameFieldBounds -> [:gfbounds | self handleBoundsCollision: gfbounds bounds]}