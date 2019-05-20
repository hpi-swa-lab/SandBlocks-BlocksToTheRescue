event handling
mouseDown: evt

	evt hand newKeyboardFocus: self.

	evt yellowButtonPressed
		ifTrue: [^ self directYellowButtonActivity: evt].
	(evt redButtonPressed and: [evt shiftPressed])
		ifTrue: [^ evt hand grabMorph: (
			self isInEditor
				ifTrue: [self copy]
				ifFalse: [self])].