event handling
mouseMove: anMouseEvent

	self isMouseDown ifTrue: [
		self updateBackgrounds].