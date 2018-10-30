*Breakout-Core
intersectsCircle: radius at: aPoint

	^ ((self expandBy: radius) containsPoint: aPoint)
		and: [self anyCornerNear: aPoint within: radius]