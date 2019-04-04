event handling
keyUp: anEvent
	self keyboardListener keyUp: (anEvent keyValue).
	^anEvent