testing
convexCollided: aBOColliderWithConvexExtent
	| bounds |
	bounds := self collisionBounds
		expandBy: aBOColliderWithConvexExtent halfExtent negated.
	bounds hasPositiveExtent ifFalse: [^ true].
	^ (bounds containsPoint: aBOColliderWithConvexExtent position) not