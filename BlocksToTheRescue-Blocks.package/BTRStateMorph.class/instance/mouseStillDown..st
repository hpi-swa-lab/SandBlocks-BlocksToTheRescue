event handling
mouseStillDown: evt

	self
		position: (self griddedPoint: evt targetPoint);
		changed: #position.