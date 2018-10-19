as yet unclassified
moveHorizontal

	self isMovingToTheRight
		ifTrue: [ self moveToTheRight ]
		ifFalse: [ self moveToTheLeft ].