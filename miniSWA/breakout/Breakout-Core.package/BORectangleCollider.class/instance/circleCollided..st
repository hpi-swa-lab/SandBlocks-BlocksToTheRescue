testing
circleCollided: aBOCollisionResult
	| own other collided |
	own := aBOCollisionResult ownCStrategy.
	other := aBOCollisionResult othersCStrategy.
	collided := own collisionBounds intersectsCircle: other radius at: other position.

	^ aBOCollisionResult
		collided: collided;
		ownDataAt: #side put: (own collisionBounds sideNearestTo: other position) asSide;
		"othersDataAt: #direction put: direction;"
		yourself