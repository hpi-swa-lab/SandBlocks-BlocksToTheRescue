as yet unclassified
testParticleEnemyCollide
	
	| scoreBeforeCollision sizeOfEnemyCollection sizeOfParticleCollection |
	gameWorld gameState sIEnemies: ({ SIEnemy new setRelativePosition: (100 @ 100) } asOrderedCollection).
	gameWorld gameState sIParticles: ({ sIParticleUp } asOrderedCollection).
	scoreBeforeCollision := gameWorld gameState score.
	sizeOfEnemyCollection := gameWorld sIEnemies size.
	sizeOfParticleCollection := gameWorld sIParticles size.
	gameWorld handleParticleEnemyCollisions.
	
	self assert: (gameWorld gameState score) equals: (scoreBeforeCollision + 1).
	self assert: (gameWorld gameState sIEnemies size) equals: (sizeOfEnemyCollection - 1).
	self assert: (gameWorld gameState sIParticles size) equals: (sizeOfParticleCollection - 1).