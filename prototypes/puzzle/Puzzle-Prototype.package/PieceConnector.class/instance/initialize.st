accessing
initialize

	super initialize.
	self 
		color: Color transparent;
		puzzlePiece: PuzzlePiece new;
		followingPiece: AttachmentPiece new;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap.