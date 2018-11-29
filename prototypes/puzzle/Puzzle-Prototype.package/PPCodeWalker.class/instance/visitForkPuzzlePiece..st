as yet unclassified
visitForkPuzzlePiece: aPPForkPuzzlePiece

	self 
		highlight: aPPForkPuzzlePiece
		during: [self visitBranchesOf: aPPForkPuzzlePiece].