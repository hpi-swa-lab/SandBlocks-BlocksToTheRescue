initialization
addStartArrow: aPolygonMorph

	aPolygonMorph
		bottomRight: self topLeft + 4;
		show.
	self addMorph: aPolygonMorph.