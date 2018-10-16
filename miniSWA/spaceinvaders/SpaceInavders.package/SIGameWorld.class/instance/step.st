as yet unclassified
step
	
	super step.
	self
		moveParticals;
		moveEnemies;
		removeOutOfBoundsParticals;
		handleCollisions;
		tickCounter: (self tickCounter + 1).