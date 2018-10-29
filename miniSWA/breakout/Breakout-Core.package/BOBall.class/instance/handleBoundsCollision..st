collision
handleBoundsCollision: bounds
	self halt.
	"| side |
	side := bounds sideNearestTo: self position.
	
	(self distanceOf: self position in: bounds on: side) < self radius
		ifTrue: [	self rebound: (self axisFrom: side)]."