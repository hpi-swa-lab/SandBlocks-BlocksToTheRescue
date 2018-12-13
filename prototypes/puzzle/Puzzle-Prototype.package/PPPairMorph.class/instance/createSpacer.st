initialization
createSpacer
		
	| spacer |
	spacer := PPSpacer new 
		extent: PPPuzzlePiece defaultSize;
		color: Color transparent;
		borderWidth: 0;
		yourself.
	^ PPPieceConnector newWith: spacer following: nil