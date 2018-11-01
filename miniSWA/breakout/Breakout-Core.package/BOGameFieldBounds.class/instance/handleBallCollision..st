collision
handleBallCollision: aBOCollisionResult

	(aBOCollisionResult dataFor: self at: #side) isBottomSide
		ifTrue: [self field gameOver].