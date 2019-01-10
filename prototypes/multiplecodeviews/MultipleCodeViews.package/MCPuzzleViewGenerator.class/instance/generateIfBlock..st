as yet unclassified
generateIfBlock: aMethodNode

	| forkPiece |
	forkPiece := PPForkPuzzlePiece create
		code: (self codeStringFor: aMethodNode receiver);
		yourself.
		
	forkPiece branches
		leftElement: (aMethodNode arguments first accept: self);
		rightElement: (aMethodNode arguments second accept: self).
		
	^ forkPiece