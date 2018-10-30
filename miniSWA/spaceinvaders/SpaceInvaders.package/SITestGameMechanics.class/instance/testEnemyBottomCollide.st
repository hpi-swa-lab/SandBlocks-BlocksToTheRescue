as yet unclassified
testEnemyBottomCollide
	
	gameWorld gameState sIWalls: ({ sIWall } asOrderedCollection).
	gameWorld handleEnemyBottomCollisions.
	
	self assert: (gameWorld gameState sIParticles size) equals: 0.