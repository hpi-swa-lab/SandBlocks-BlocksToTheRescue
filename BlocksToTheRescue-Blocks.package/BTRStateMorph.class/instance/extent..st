geometry
extent: aPoint

	self extent in: [:oldExtent |
		super extent: (self expandToGrid: aPoint).
		self updateDockingPositions.
		oldExtent ~= aPoint
			ifTrue: [self changed: #position]].