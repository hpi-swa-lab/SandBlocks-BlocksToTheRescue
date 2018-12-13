initialization
createSpacer
		
	| spacer |
	spacer := CFGSpacer new 
		extent: CFGPuzzlePiece defaultSize;
		color: Color transparent;
		borderWidth: 0;
		yourself.
	^ CFGPieceConnector newWith: spacer following: nil