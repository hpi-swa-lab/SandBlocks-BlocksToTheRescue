as yet unclassified
initialize 
	
	super initialize.
	self
		color: Color black;
		extent: self gameWorldSize;
		score: 0;
		life: 3;
		createLables;
		resetTickCounter;
		enemiesMovingRight: false;
		sIParticals: OrderedCollection new;
		sIEnemies: OrderedCollection new;
		spawnPlayer;
		openInWorld.