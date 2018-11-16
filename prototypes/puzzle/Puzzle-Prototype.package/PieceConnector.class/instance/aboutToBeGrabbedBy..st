as yet unclassified
aboutToBeGrabbedBy: aHand

	^ ((self followingPiece containsPoint: aHand position) and: [self followingPiece isSticky not])
		ifTrue: [self followingPiece aboutToBeGrabbedBy: aHand]
		ifFalse: [self]