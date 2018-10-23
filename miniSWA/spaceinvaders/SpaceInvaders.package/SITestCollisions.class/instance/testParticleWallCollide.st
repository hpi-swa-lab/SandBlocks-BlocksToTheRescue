as yet unclassified
testParticleWallCollide
	
	| sizeOfWallCollection sizeOfParticleCollection |
	gameWorld gameState sIWalls: ({  SIWall new position: (100 @ 100) } asOrderedCollection).
	gameWorld gameState sIParticles: ({ SIParticle new position: (100 @ 100) } asOrderedCollection).
	sizeOfWallCollection := gameWorld sIWalls size.
	sizeOfParticleCollection := gameWorld sIParticles size.
	gameWorld handleParticleWallCollisions.
	
	self assert: (gameWorld gameState sIParticles size) equals: (sizeOfParticleCollection - 1).