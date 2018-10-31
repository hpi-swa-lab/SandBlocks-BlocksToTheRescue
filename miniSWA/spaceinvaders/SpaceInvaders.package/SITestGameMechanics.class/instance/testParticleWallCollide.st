as yet unclassified
testParticleWallCollide
	
	| sizeOfParticleCollection |
	gameWorld gameState sIWalls: ({ sIWall } asOrderedCollection).
	gameWorld gameState sIParticles: ({ sIParticle } asOrderedCollection).
	sizeOfParticleCollection := gameWorld sIParticles size.
	gameWorld handleParticleWallCollisions.
	
	self assert: (gameWorld gameState sIParticles size) equals: (sizeOfParticleCollection - 1).