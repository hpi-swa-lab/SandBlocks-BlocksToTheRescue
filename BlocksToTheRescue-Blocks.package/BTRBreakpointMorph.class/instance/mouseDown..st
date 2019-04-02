event handling
mouseDown: evt

	evt handler = self enableToggleMorph
		ifTrue: [self blockModel toggleEnabled].
	evt handler = self onceToggleMorph
		ifTrue: [self blockModel toggleOnce].
	self changed.