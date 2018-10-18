as yet unclassified
initialize 
	
	super initialize.
	self
		color: Color black;
		extent: self gameWorldSize;
		score: self startScore;
		life: self startLifes;
		createLables;
		resetTickCounter;
		sIParticals: OrderedCollection new;
		sIEnemies: OrderedCollection new;
		spawnPlayer.