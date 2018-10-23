as yet unclassified
testEnemyBottomCollide
	
	| sizeOfWallCollection |
	gameWorld gameState sIWalls: ({ SIWall new position: (gameWorld extent) } asOrderedCollection).
	sizeOfWallCollection := gameWorld sIWalls size.
	gameWorld handleEnemyBottomCollisions.
	
	self assert: (gameWorld gameState sIParticles size) equals: 0.