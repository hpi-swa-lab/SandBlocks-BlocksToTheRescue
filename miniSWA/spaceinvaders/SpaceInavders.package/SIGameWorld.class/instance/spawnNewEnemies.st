as yet unclassified
spawnNewEnemies
	
	((self tickCounter \\ (self relativeToStepEnemySpaningTicks)) = 0) ifTrue: [self spawnNewRowOfEnemies].
