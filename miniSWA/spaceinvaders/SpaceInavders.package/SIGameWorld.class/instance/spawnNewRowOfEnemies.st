as yet unclassified
spawnNewRowOfEnemies

	| sIEnemy enemyColor |
	
	enemyColor := Color random.
	0 to: self numberOfEnemiesPerRow -1 do:
		[ :enemyIndex |
			sIEnemy := SIEnemy new.	
			self sIEnemies add: sIEnemy.
			self addMorph: sIEnemy.
			sIEnemy position: (self left + (enemyIndex * self spacePerEnemy) + self leftSpawnOffset @ self top).
			sIEnemy color: enemyColor.
		].