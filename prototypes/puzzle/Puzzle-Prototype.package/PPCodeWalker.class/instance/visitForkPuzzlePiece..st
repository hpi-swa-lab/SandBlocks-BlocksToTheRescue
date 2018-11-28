as yet unclassified
visitForkPuzzlePiece: aPPForkPuzzlePiece

	| oldColor |
	oldColor := aPPForkPuzzlePiece color.
	aPPForkPuzzlePiece color: self highlightColor.
	self visitBranchesOf: aPPForkPuzzlePiece.
	