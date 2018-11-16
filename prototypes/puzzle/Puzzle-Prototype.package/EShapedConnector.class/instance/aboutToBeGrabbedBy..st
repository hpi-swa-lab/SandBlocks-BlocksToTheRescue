as yet unclassified
aboutToBeGrabbedBy: aHand
	
	^((self secondFollowingPiece containsPoint: aHand position) and: [self secondFollowingPiece isSticky not])
		ifTrue: [self secondFollowingPiece aboutToBeGrabbedBy: aHand]
		ifFalse: [super aboutToBeGrabbedBy: aHand]
		