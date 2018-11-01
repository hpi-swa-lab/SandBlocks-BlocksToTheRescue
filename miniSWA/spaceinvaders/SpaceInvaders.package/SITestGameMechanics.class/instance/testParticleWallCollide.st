as yet unclassified
testParticleWallCollide
	
	| sizeOfParticleCollection |
	gameWorld gameState sIWalls: ({ sIWall } asOrderedCollection).
	gameWorld gameState sIParticles: ({ sIParticleDown } asOrderedCollection).
	sizeOfParticleCollection := gameWorld sIParticles size.
	gameWorld handleParticleWallCollisions.
	
	self assert: (gameWorld gameState sIParticles size) equals: (sizeOfParticleCollection - 1).