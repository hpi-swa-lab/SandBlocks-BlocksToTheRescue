testing
circleCollided: aBOCollisionResult
	| own other direction squaredDistance requiredDistance |
	own := aBOCollisionResult ownCStrategy.
	other := aBOCollisionResult othersCStrategy.
	direction := own position - other position.
	squaredDistance := own position squaredDistanceTo: other position.
	requiredDistance := own radius + other radius.

	^ aBOCollisionResult
		collided: (squaredDistance <= requiredDistance squared);
		ownDataAt: #direction put: direction;
		othersDataAt: #direction put: direction negated;
		dataAt: #squaredDistance put: squaredDistance;
		dataAt: #requiredDistance put: requiredDistance;
		yourself