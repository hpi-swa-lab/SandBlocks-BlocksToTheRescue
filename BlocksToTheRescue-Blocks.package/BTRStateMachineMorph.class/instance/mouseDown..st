event handling
mouseDown: evt

	evt hand newKeyboardFocus: self.

	evt yellowButtonPressed ifTrue: [
		self updateMenuClickPosition: evt.
		^ self yellowButtonActivity: evt shiftPressed].
	(evt redButtonPressed and: [evt shiftPressed]) ifTrue: [
		^ evt hand grabMorph: self].