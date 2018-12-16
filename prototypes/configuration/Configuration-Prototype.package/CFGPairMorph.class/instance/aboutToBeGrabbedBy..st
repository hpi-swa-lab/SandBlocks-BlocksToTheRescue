dropping/grabbing
aboutToBeGrabbedBy: aHand

	self halt.
	^ (aHand position x > (self left + self width / 2))
		ifTrue: [self rightElement aboutToBeGrabbedBy: aHand]
		ifFalse: ["self leftElement aboutToBeGrabbedBy: aHand"]