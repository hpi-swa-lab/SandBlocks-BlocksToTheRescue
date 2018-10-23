entity-collision
handleBoundsCollision: bounds
	| side |
	side := bounds sideNearestTo: self position.
	
	(self distanceOf: self position in: bounds on: side) < self radius
		ifTrue: [self rebound: (self axisFrom: side)].
	"	(bounds topLeft * 100) asIntegerPoint asString, '->',
		(bounds bottomRight * 100) asIntegerPoint asString, ' <- ',
		self position asString.
	Transcript showln: (bounds sideNearestTo: self position)."