accessing
iconMorph: anImageMorph

	iconMorph ifNotNil: [iconMorph abandon].
	iconMorph := anImageMorph.
	self addMorph: iconMorph.
	iconMorph position: self innerBounds topLeft + (2@2).