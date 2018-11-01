as yet unclassified
createWalls
	
	self gameState wallPositions do: [ :position | self createWallAt: position ].