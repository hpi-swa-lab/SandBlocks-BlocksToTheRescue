as yet unclassified
testSpawnNewRowOfEnemies
	
	| sizeOfEnemyCollection |
	
	sizeOfEnemyCollection := gameWorld sIEnemies size.
	gameWorld spawnNewRowOfEnemies.
	
	self assert: (gameWorld gameState sIEnemies size - gameWorld gameState numberOfEnemiesPerRow) equals: (sizeOfEnemyCollection).