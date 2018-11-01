as yet unclassified
createWallAt: aPoint
	
	| sIWallMorph sIWall |
	sIWall := (SIWall extent: 50 @ 100 depth: 32) configure.
	sIWall getCanvas fillColor: Color brown.
	sIWallMorph := sIWall asMorph.
	self sIWalls add: sIWallMorph.
	self addMorph: sIWallMorph.
	sIWallMorph position: aPoint.