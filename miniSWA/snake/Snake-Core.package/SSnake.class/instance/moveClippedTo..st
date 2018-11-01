movement
moveClippedTo: aPoint 

	self segments size > 0 
		ifTrue: [self segments shift position: self head position].
	self head position: (self head position + self direction) \\ aPoint.
	self directionAfterLastMovement: self direction.
