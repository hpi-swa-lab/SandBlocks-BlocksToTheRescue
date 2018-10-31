as yet unclassified
testInBounds
	
	self assert: (gameWorld isInBounds: ( -1 @ -1)) equals: false.
	self assert: (gameWorld isInBounds: ( (gameWorld left + (gameWorld right - gameWorld left/2)) @ (gameWorld top + (gameWorld bottom - gameWorld top/2)) )) equals: true.
	self assert: (gameWorld isInBounds: ( (gameWorld right + 1) @ (gameWorld bottom + 1) )) equals: false.