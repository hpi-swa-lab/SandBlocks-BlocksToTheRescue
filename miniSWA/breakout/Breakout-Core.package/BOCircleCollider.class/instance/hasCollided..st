testing
hasCollided: aBOCircleCollider

	^ (self position dist: aBOCircleCollider position)
		< (self radius + aBOCircleCollider radius)