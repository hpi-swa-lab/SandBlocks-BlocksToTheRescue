as yet unclassified
dropped: aMorph into: anAttachmentPiece

	super dropped: aMorph into: anAttachmentPiece.
	
	self secondFollowingPiece == anAttachmentPiece
		ifTrue: [self secondFollowingPiece: aMorph].