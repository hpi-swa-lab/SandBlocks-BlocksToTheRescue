collision
handleBallCollision: aBOCollisionResult

	(aBOCollisionResult dataFor: self at: #side) isBottomSide
		ifTrue: [self field
			destroyBall: (aBOCollisionResult oppositeEntityOf: self)].