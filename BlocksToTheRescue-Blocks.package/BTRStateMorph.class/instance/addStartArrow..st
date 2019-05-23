initialization
addStartArrow: aPolygonMorph

	aPolygonMorph bottomRight: self topLeft + 4.
	self addMorph: aPolygonMorph.