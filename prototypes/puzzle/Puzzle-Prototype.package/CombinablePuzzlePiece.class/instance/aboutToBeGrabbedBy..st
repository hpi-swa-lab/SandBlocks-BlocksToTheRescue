as yet unclassified
aboutToBeGrabbedBy: aHand

	^ ((self innerPiece containsPoint: aHand position) and: [self innerPiece isSticky not])
		ifTrue: [self innerPiece aboutToBeGrabbedBy: aHand]
		ifFalse: [self]