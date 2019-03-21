as yet unclassified
initializeParameterBar

	self parameterBar: BTRParameterBarMorph new.
	self parameterBar 
		color: #V2;BTRColorMorph;E;Color1;#88D6EF;.
	self 
		addMorph: self parameterBar
		fullFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 0) offsets: (0 @ 0 corner: 0 @ self barHeight)).