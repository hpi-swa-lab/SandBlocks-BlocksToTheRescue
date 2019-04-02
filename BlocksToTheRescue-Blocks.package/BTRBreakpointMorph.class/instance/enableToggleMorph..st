accessing
enableToggleMorph: anImageMorph

	enableToggleMorph ifNotNil: [enableToggleMorph abandon].
	self addMorph: (enableToggleMorph := anImageMorph
		position: self innerBounds topLeft + (2@2);
		on: #mouseDown send: #mouseDown: to: self).