event handling
mouseStillDown: evt

	self
		position: evt targetPoint;
		changed: #position.