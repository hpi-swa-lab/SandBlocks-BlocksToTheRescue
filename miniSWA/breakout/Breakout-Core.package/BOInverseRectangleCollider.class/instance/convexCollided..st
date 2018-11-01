testing
convexCollided: aBOColliderWithConvexExtent
	| bounds |
	bounds := self collisionBounds
		expandBy: aBOColliderWithConvexExtent halfExtent negated.

	^ bounds hasPositiveExtent 
			and: [(bounds containsPoint: aBOColliderWithConvexExtent position) not]