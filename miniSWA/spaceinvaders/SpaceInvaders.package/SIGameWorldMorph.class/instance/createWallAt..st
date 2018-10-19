as yet unclassified
createWallAt: aPoint
	
	| sIWall |
	sIWall := SIWall new.
	self sIWalls add: sIWall.
	self addMorph: sIWall.
	sIWall position: aPoint.