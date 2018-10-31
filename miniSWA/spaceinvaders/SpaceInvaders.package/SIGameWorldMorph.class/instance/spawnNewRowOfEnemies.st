as yet unclassified
spawnNewRowOfEnemies

	| sIEnemy |
	
	0 to: self gameState numberOfEnemiesPerRow -1 do:
		[ :enemyIndex |
			sIEnemy := SIEnemy spawnMovingGameElementWithRessourceManager: (self ressourceManager) atAbsolute: (self left  + self leftSpawnOffset + (enemyIndex * self gameState spacePerEnemy) @ self top) andSprite: 'Enemy Sprite'.
			self sIEnemies add: sIEnemy.
			self addMorph: sIEnemy.
		].