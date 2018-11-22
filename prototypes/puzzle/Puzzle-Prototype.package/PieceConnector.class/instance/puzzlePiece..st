accessing
puzzlePiece: aPuzzlePiece

	puzzlePiece := aPuzzlePiece.
	self addMorph: puzzlePiece inFrontOf: self followingPiece.
	"self layoutChanged."