drag-and-drop
dropped: aMorph into: anAttachmentPiece

	self followingConnector = anAttachmentPiece
		ifTrue: [self followingConnector: aMorph].