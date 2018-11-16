accessing
puzzlePiece: aPuzzlePiece

	puzzlePiece := aPuzzlePiece.
	self addMorph: puzzlePiece.
	puzzlePiece position: self position.
	self changed.