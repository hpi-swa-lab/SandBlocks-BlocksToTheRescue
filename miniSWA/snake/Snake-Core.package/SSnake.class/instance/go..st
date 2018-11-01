movement
go: aPoint
	
	((aPoint abs = self directionAfterLastMovement abs) not or: [self segments size = 0])
		ifTrue: [self direction: aPoint sign].
	