accessing
followingPiece: aMorph

	followingPiece := aMorph.
	self addMorph: followingPiece.
	followingPiece topLeft: self puzzlePiece bottomLeft + self attachmentOffset.
	self changed.