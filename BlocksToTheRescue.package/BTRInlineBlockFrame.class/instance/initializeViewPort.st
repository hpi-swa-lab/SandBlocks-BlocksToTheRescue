as yet unclassified
initializeViewPort

	self viewPort: Morph new.
	self viewPort
		color: cblack;#V2;BTRColorMorph;E;Color1;#B9B9D5;.
	self 
		addMorph: self viewPort
		fullFrame: (LayoutFrame fractions: (0@0 corner: 1@1) offsets: (0 @ self barHeight corner: 0@0)).