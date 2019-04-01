accessing
textMorph: aTextMorph

	textMorph ifNotNil: [textMorph abandon].
	textMorph := aTextMorph.
	self addMorph: textMorph.
	textMorph position: self innerBounds topLeft + (20@ (-1)).
	textMorph extent: 20@16.