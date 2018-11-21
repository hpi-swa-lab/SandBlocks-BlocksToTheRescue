as yet unclassified
aboutToBeGrabbedBy: aHand

	^ (self followingPiece isNil not and: [(self followingPiece containsPoint: aHand position) and: [self followingPiece isSticky not]])
		ifTrue: [self followingPiece aboutToBeGrabbedBy: aHand]
		ifFalse: [self]