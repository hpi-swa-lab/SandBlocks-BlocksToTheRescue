testing
circleCollided: aBOCircleCollider

	^ self collisionBounds
		intersectsCircle: aBOCircleCollider radius
		at: aBOCircleCollider position