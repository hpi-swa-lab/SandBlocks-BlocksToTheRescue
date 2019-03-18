as yet unclassified
initializeParameterBar

	self parameterBar: BTRParameterBarMorph new.
	self parameterBar 
		color: cblack;#V2;BTRColorMorph;10;Color1;#017CFFAF;.
	self 
		addMorph: self parameterBar
		fullFrame: (LayoutFrame fractions: (0@0 corner: 1@0) offsets: (0 @ 0 corner: 0 @ self barHeight)).