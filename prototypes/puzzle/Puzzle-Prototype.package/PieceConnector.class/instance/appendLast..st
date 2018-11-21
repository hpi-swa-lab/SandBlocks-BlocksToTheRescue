as yet unclassified
appendLast: aMorph

	self isTerminated
		ifTrue: [self followingPiece: aMorph]
		ifFalse: [self followingPiece appendLast: aMorph]