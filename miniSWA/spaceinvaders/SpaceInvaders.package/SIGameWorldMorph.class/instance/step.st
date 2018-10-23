as yet unclassified
step
	
	super step.
	self
		moveParticles;
		moveEnemies;
		spawnNewEnemies;
		spawnParticlesOfEnemies;
		removeOutOfBoundsParticles;
		handleCollisions;
		tickCounter: (self tickCounter + 1).