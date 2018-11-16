as yet unclassified
invalidRect: aRectangle from: aMorph
	
	aMorph == self followingPiece
		ifTrue: [self resetSecondFollowingPosition].
	
	super invalidRect: aRectangle from: aMorph. 