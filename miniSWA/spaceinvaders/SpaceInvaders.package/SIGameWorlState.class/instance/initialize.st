as yet unclassified
initialize 

	super initialize.
	self
		score: self startScore;
		life: self startLifes;
		sIParticles: OrderedCollection new;
		sIEnemies: OrderedCollection new;
		sIWalls: OrderedCollection new;
		resetTickCounter.