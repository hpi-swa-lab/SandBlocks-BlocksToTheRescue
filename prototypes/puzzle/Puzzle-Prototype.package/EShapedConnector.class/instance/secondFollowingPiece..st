accessing
secondFollowingPiece: aMorph

	secondFollowingPiece := aMorph.
	self addMorph: secondFollowingPiece.
	secondFollowingPiece topLeft: self followingPiece bottomLeft.
	self changed.