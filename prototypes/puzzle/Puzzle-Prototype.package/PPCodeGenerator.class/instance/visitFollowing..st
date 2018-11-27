accessing
visitFollowing: aPPPieceConnector

	^ aPPPieceConnector isTerminated
		ifTrue: ['']
		ifFalse: ['.', Character linefeed, (self visit: aPPPieceConnector followingConnector)]
	