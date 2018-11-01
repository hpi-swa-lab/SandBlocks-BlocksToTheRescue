*Breakout-Core
noCornerNear: aPoint within: radius
	| sqr |
	sqr := radius squared.

	^   (self topLeft squaredDistanceTo: aPoint) > sqr
and: [(self topRight squaredDistanceTo: aPoint) > sqr]
and: [(self bottomLeft squaredDistanceTo: aPoint) > sqr]
and: [(self bottomRight squaredDistanceTo: aPoint) > sqr]