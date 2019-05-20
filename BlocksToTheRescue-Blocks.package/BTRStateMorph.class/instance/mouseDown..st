event handling
mouseDown: evt

	self hideDockingPoints.
	evt yellowButtonPressed ifTrue: [self directYellowButtonActivity: evt].