as yet unclassified
removedMorph: aMorph

	aMorph == self followingPiece
		ifTrue: [self followingPiece: AttachmentPiece new].