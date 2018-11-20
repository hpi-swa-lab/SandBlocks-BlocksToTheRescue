as yet unclassified
dropped: aMorph intoLowerPartOf: aPuzzlePiece

	self puzzlePiece == aPuzzlePiece
		ifTrue: [(self followingPiece: (self class newWith: self puzzlePiece following: aMorph))].