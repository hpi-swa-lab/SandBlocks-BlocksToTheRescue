as yet unclassified
testParticalEnemyCollide
	
	| scoreBeforeCollision |
	gameWorld gameState sIEnemies: ({ SIEnemy new position: (100 @ 100) } asOrderedCollection).
	gameWorld gameState sIParticals: ({ SIPartical new position: (100 @ 100) } asOrderedCollection).
	scoreBeforeCollision := gameWorld gameState score.
	gameWorld handleParticalEnemyCollisions.
	self assert: (gameWorld gameState score) equals: (scoreBeforeCollision + 1).