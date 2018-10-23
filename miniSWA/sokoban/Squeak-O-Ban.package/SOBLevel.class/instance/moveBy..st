as yet unclassified
moveBy: aPoint
	
	| newPosition pushPosition |
	newPosition := self playerPosition + aPoint.
	pushPosition := newPosition + aPoint.
	
	(self isFreeAt: pushPosition) ifTrue: 
		[self moveOccupantAt: newPosition to: pushPosition].
	
	(self isFreeAt: newPosition) ifTrue: 
		[self movePlayerTo: newPosition.].
	