*Breakout-Core
anyCornerNear: aPoint within: radius
	| sqr |
	sqr := radius squared.

	^  (self topLeft squaredDistanceTo: aPoint) <= sqr
or: [(self topRight squaredDistanceTo: aPoint) <= sqr]
or: [(self bottomLeft squaredDistanceTo: aPoint) <= sqr]
or: [(self bottomRight squaredDistanceTo: aPoint) <= sqr]