as yet unclassified
dropped: aMorph intoLowerPartOf: aPuzzlePiece

	self puzzlePiece = aPuzzlePiece
		ifTrue: [self attachFollowing: aMorph].