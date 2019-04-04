accessing
pickMoveOrder 
	(self direction = #right) ifTrue: [representedObject moveRight.].
	(self direction = #left) ifTrue: [representedObject moveLeft.].