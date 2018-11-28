as yet unclassified
visitBranchesOf: aPPForkPuzzlePiece

	(Compiler evaluate: aPPForkPuzzlePiece code)
		ifTrue: [self visit: aPPForkPuzzlePiece branches leftElement]
		ifFalse: [self visit: aPPForkPuzzlePiece branches rightElement].