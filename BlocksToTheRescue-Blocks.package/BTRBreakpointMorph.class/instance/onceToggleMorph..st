accessing
onceToggleMorph: anImageMorph

	onceToggleMorph ifNotNil: [onceToggleMorph abandon].
	self addMorph: (onceToggleMorph := anImageMorph
		position: self innerBounds topLeft + (16@2);
		on: #mouseDown send: #mouseDown: to: self).