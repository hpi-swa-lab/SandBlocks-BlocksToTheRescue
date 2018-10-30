as yet unclassified
testParticleWallCollide
	
	| sizeOfParticleCollection |
	gameWorld gameState sIWalls: ({  SIWall new position: (100 @ 100) } asOrderedCollection).
	gameWorld gameState sIParticles: ({ SIParticle new position: (100 @ 100) } asOrderedCollection).
	sizeOfParticleCollection := gameWorld sIParticles size.
	gameWorld handleParticleWallCollisions.
	
	self assert: (gameWorld gameState sIParticles size) equals: (sizeOfParticleCollection - 1).