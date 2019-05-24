event handling
mouseDown: anEvent

	self slider mouseDownInSlider: anEvent.
	self owner mouseDown: anEvent.