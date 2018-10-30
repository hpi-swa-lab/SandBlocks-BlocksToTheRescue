testing
circleCollided: aBOCircleCollider

	^ (self position squaredDistanceTo: aBOCircleCollider position)
		<= (self radius + aBOCircleCollider radius) squared