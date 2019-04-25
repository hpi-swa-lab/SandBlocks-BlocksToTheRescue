as yet unclassified
initializeBlockMorph

	self 
		removeAllMorphs;
		addMorph: self node block inlineView 
		fullFrame: (LayoutFrame fractions: 1 asPoint asRectangle).
	
	