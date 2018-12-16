event handling
mouseDown: aMouseEvent

	aMouseEvent shiftPressed
		ifTrue: [self editCode]
		ifFalse: [super mouseDown: aMouseEvent].