as yet unclassified
initialize 
	
	super initialize.
	self
		color: Color black;
		extent: self gameWorldSize;
		score: 0;
		resetTickCounter;
		sIParticals: OrderedCollection new;
		sIEnemies: OrderedCollection new;
		spawnPlayer;
		spawnInitialEnemies;
		createScoreLable;
		openInWorld.