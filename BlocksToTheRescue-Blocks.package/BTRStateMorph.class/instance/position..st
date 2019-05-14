geometry
position: aPoint

	self position in: [:oldPos |
		super position: (self adhereToValidPosition: (self griddedPoint: aPoint)).
		oldPos ~= aPoint
			ifTrue: [self changed: #position]].