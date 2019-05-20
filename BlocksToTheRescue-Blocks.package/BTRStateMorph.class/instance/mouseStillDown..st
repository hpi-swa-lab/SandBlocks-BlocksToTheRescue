event handling
mouseStillDown: evt

	evt redButtonPressed ifTrue: [self position: evt targetPoint].