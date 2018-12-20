initialization
createSpacer
		
	| spacer |
	spacer := CFGSpacer new 
		extent: CFGPuzzlePiece defaultSize;
		yourself.
	^ CFGPieceConnector newWith: spacer following: nil