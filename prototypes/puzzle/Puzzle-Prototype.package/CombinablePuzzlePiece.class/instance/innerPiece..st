accessing
innerPiece: aMorph

	innerPiece := aMorph.
	self addMorph: innerPiece.
	innerPiece position: self position + self class innerPieceOffset.
	self extent: innerPiece extent + (self class innerPieceOffset * 2).
	self changed.