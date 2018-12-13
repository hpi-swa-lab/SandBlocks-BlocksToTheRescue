accessing
puzzlePiece: aPuzzlePiece

	puzzlePiece := aPuzzlePiece.
	
	"mt: Maybe encapsulate this operation? Make it idempotent even? #assureMorphPieces?"
	self
		addMorph: self puzzlePiece
		inFrontOf: self followingConnector.