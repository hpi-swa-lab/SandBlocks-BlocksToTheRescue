event handling
mouseDown: anMouseEvent

	anMouseEvent redButtonPressed ifTrue: [
		self startStepping.
		self mouseDownStepCount: 0.
		self updateBackgrounds].