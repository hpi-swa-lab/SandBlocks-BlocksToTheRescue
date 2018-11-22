accessing
insertMorph: aMorph

	self addMorph: aMorph behind: self puzzlePiece.
	self layoutChanged.