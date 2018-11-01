as yet unclassified
testParticlePlayerCollide
	
	| lifesBeforeCollision sizeOfParticleCollection |
	gameWorld sIPlayer position: (80 @ 80).
	gameWorld gameState sIParticles: ({sIParticleDown } asOrderedCollection).
	gameWorld gameState sIEnemies: ({ SIEnemy new position: (100 @ 100) . SIEnemy new position: (200 @ 200) } asOrderedCollection).
	lifesBeforeCollision := gameWorld gameState lifes.
	sizeOfParticleCollection := gameWorld sIParticles size.
	gameWorld handleParticlePlayerCollisions.
	
	self assert: (gameWorld gameState lifes) equals: (lifesBeforeCollision - 1).
	self assert: (gameWorld gameState sIParticles size) equals: (sizeOfParticleCollection - 1).
	self assert: (gameWorld gameState sIEnemies size) equals: 0.