*Breakout-Core
intersectsCircle: radius at: aPoint

	^ ((self expandBy: radius@0) containsPoint: aPoint)
or: [(self expandBy: 0@radius) containsPoint: aPoint]
or: [(self anyCornerNear: aPoint within: radius)]