event handling
startDrag: evt

	self addMorph: dragLine.
	self handle: (CircleMorph new
		extent: 5@5;
		borderWidth: 0;
		color: Color yellow;
		center: evt position;
		yourself).
	self addMorph: self handle.
	