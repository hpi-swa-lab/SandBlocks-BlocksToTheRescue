accessing
insertMorph: aMorph

	self addMorph: aMorph.
	aMorph topLeft: self puzzlePiece bottomLeft + self attachmentOffset.
	self changed.