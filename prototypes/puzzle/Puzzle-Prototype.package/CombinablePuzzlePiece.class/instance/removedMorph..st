as yet unclassified
removedMorph: aMorph

	self innerPiece == aMorph 
		ifTrue: [self innerPiece: AttachmentPiece new].