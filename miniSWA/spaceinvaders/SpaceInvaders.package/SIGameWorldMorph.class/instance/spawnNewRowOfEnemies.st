as yet unclassified
spawnNewRowOfEnemies

	| sIEnemy |
	
	0 to: self numberOfEnemiesPerRow -1 do:
		[ :enemyIndex |
			sIEnemy := SIEnemy newWithRessourceManager: self ressourceManager.	
			self sIEnemies add: sIEnemy.
			self addMorph: sIEnemy.
			sIEnemy setSprite: 'Enemy Sprite'.
			sIEnemy position: (self left  + self leftSpawnOffset + (enemyIndex * self gameState spacePerEnemy) @ self top).
		].