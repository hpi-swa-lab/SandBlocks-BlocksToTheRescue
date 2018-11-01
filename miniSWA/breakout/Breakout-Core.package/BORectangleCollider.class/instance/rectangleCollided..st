testing
rectangleCollided: aBOCollisionResult
	| own other |
	own := aBOCollisionResult ownCStrategy.
	other := aBOCollisionResult othersCStrategy.
	
	^ aBOCollisionResult
		collided: (own collisionBounds intersects: other collisionBounds);
		ownDataAt: #side put: (own collisionBounds sideNearestTo: other position);
		othersDataAt: #side put: (other collisionBounds sideNearestTo: own position);
		yourself