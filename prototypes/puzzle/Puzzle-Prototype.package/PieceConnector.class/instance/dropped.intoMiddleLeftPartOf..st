as yet unclassified
dropped: aMorph intoMiddleLeftPartOf: aPuzzlePiece

	self puzzlePiece = aPuzzlePiece
		ifTrue: [self attachFollowing: aMorph. aMorph position: aMorph position - (20 @ 20)].