as yet unclassified
initialize

	super initialize.
	self 
		extent: PuzzlePiece defaultSize;
		borderStyle: (BorderStyle width: 5 color: Color black);
		color: Color transparent;
		beSticky.
