as yet unclassified
spawnNewRowOfEnemies

	| sIEnemy |
	
	0 to: self gameState numberOfEnemiesPerRow -1 do:
		[ :enemyIndex |
			sIEnemy := SIEnemy spawnAtAbsolutePosition: (self left  + self leftSpawnOffset + (enemyIndex * self gameState spacePerEnemy) @ self top) withSprite: (self ressourceManager getSprite: 'Enemy Sprite').
			self sIEnemies add: sIEnemy.
			self addMorph: sIEnemy.
		].