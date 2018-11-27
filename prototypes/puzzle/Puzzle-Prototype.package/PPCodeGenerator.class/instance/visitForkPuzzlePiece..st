accessing
visitForkPuzzlePiece: aPPForkPuzzlePiece

	^ '2 atRandom = 1
		ifTrue: [', (self visit: aPPForkPuzzlePiece branches leftElement), ']
		ifFalse: [', (self visit: aPPForkPuzzlePiece branches rightElement), ']'