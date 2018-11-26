drag-and-drop
dropped: aConnector intoLowerPartOf: aPuzzlePiece

	self puzzlePiece = aPuzzlePiece
		ifTrue: [self attachFollowing: aConnector].