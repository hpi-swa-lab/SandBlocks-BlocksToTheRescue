as yet unclassified
visitBranchesOf: aPPForkPuzzlePiece

	(Compiler evaluate: aPPForkPuzzlePiece code)
		ifTrue: [self instructionPointer: aPPForkPuzzlePiece branches leftElement]
		ifFalse: [self instructionPointer: aPPForkPuzzlePiece branches rightElement].