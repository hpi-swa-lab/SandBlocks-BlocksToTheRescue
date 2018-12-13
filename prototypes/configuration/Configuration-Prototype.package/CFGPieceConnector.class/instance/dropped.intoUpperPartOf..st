drag-and-drop
dropped: aConnector intoUpperPartOf: aPuzzlePiece
	
	self puzzlePiece = aPuzzlePiece
		ifTrue: [self attachHere: aConnector].