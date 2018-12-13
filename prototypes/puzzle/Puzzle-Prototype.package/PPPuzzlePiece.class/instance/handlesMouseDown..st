event handling
handlesMouseDown: aMouseEvent

	Transcript showln: aMouseEvent.
	^ aMouseEvent shiftPressed
		ifTrue: [true]
		ifFalse: [super handlesMouseDown: aMouseEvent]