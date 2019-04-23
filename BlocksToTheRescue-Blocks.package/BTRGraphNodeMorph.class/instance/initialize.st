as yet unclassified
initialize
	
	super initialize.
	self layoutPolicy: ProportionalLayout new.
	self addMorph: self node block inlineView fullFrame: (LayoutFrame fractions: 1 asPoint asRectangle).
	
	