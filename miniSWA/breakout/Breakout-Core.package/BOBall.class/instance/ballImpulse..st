collision
ballImpulse: aBOCollisionResult

	^ ((aBOCollisionResult dataFor: self)
			at: #direction) theta asUnitCirclePoint