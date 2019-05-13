event handling
mouseStillDown: evt

	self position in: [:oldPos |
		self position: (self griddedPoint: evt targetPoint).
		oldPos ~= self position
			ifTrue: [self changed: #position]].