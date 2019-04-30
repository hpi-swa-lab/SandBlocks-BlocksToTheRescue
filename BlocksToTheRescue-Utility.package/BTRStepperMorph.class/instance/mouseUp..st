event handling
mouseUp: anMouseEvent

	self shouldStepValue ifFalse: [
		"don't do last step if already stepping"
		self stepValue].

	self upButton noBackground.
	self downButton noBackground.
	self mouseDownStepCount: nil.
	self stopStepping.