accessing
visitForkPuzzlePiece: aPPForkPuzzlePiece

	^ aPPForkPuzzlePiece condition, '
		ifTrue: [', (self visit: aPPForkPuzzlePiece branches leftElement), ']
		ifFalse: [', (self visit: aPPForkPuzzlePiece branches rightElement), ']'