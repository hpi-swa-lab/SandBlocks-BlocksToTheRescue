as yet unclassified
initialize 
	
	super initialize.
	self ressourceManager: SIRessourceManager new;
		gameState: SIGameState new;
		color: Color black;
		extent: self gameState gameWorldSize;
		createLables;
		spawnPlayer;
		createWalls.