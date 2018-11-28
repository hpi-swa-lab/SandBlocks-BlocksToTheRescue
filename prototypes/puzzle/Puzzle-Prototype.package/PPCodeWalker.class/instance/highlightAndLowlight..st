as yet unclassified
highlightAndLowlight: aPPPuzzlePiece

	| oldColor piecesWalked |
	self piecesWalked: self piecesWalked + 1.
	oldColor := aPPPuzzlePiece color.
	piecesWalked := self piecesWalked.
	
	self changeColorOf: aPPPuzzlePiece to: self highlightColor after: piecesWalked.
	self changeColorOf: aPPPuzzlePiece to: oldColor after: piecesWalked + 1.
	
