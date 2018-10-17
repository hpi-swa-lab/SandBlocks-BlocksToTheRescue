as yet unclassified
step
	
	super step.
	self
		moveParticals;
		moveEnemies;
		spawnNewEnemies;
		removeOutOfBoundsParticals;
		handleCollisions;
		tickCounter: (self tickCounter + 1).