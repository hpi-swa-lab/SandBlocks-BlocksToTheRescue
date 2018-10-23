as yet unclassified
handleEnemyBottomCollisions
	
	self sIEnemies do: [ :enemy |
		(enemy bottom > (self bottom - self gameState playerBottomDieTolreance))
			ifTrue: [ self playerLoosesLife ]
	].