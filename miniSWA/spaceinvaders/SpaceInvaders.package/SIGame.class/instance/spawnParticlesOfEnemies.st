as yet unclassified
spawnParticlesOfEnemies
	
	self sIEnemies do: [ :enemy |
		self shotProbabiltyPerEnemyAndTick
			ifTrue: [ self spawnParticleAt: (enemy bottomCenter + (0 @ 50)) withMoveDistance: 10] ].