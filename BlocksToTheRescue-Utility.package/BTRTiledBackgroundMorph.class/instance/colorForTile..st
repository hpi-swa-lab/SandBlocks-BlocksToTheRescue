drawing
colorForTile: aPoint

	^ (aPoint x even xor: [aPoint y even])
		ifTrue: [self color]
		ifFalse: [self tileColor]