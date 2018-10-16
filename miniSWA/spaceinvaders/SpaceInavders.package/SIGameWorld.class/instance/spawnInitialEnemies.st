as yet unclassified
spawnInitialEnemies

	| sIEnemy |	
	0 to: self numberOfEnemiesPerRow -1 do:
		[ :enemyIndex |
		sIEnemy := SIEnemy new.
		self sIEnemies add: sIEnemy.
		self addMorph: sIEnemy.
		sIEnemy position: (enemyIndex * self spacePerEnemy + self initialLeftOffset @ 0)
		].