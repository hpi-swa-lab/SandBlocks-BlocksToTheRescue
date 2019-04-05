public interface
isIntersectingWithAnyObject: aCollidingGameElement
	^collisionObjects anySatisfy: [:collisionObject |
		 (aCollidingGameElement intersects: (collisionObject bounds))]
