collision
reboundSide: aBOCollisionResult

	^ (aBOCollisionResult dataFor: (aBOCollisionResult oppositeEntityOf: self)
			at: #side) axisSymbol