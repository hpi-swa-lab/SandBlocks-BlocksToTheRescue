visiting
visitForkPuzzlePiece: aPPForkPuzzlePiece

	^ aPPForkPuzzlePiece code, '
		ifTrue: [', (self visit: aPPForkPuzzlePiece branches leftElement), ']
		ifFalse: [', (self visit: aPPForkPuzzlePiece branches rightElement), ']'