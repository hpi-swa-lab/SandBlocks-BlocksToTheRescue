accessing
followingPiece: aMorph

	followingPiece := aMorph.
	followingPiece ifNotNil: [self insertMorph: aMorph].