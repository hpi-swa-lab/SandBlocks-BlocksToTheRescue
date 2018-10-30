as yet unclassified
testEnemyBottomCollide
	
	gameWorld gameState sIWalls: ({ SIWall new position: (gameWorld extent) } asOrderedCollection).
	gameWorld handleEnemyBottomCollisions.
	
	self assert: (gameWorld gameState sIParticles size) equals: 0.