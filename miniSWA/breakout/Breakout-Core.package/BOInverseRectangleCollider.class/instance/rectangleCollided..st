testing
rectangleCollided: aBOCollisionResult
	| own other |
	own := aBOCollisionResult ownCStrategy.
	other := aBOCollisionResult othersCStrategy.

	^ aBOCollisionResult
		collided: (own convexCollided: other);
		ownDataAt: #side put: (self flag: #todo);
		yourself