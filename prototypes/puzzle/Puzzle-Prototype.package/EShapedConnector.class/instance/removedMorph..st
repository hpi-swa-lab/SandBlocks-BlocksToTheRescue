as yet unclassified
removedMorph: aMorph

	aMorph = self secondFollowingPiece
		ifTrue: [self secondFollowingPiece: AttachmentPiece new]
		ifFalse: [super removedMorph: aMorph]