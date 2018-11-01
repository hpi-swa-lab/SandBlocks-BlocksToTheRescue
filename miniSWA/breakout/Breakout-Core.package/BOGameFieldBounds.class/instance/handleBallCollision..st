collision
handleBallCollision: aBOCollisionResult

	(aBOCollisionResult dataFor: self at: #side) isBottomSide
		ifTrue: [self error: 'Game Over!'].