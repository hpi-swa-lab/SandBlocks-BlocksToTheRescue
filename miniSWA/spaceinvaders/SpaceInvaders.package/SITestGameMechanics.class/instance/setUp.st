as yet unclassified
setUp
	
	| sIWallForm |
	gameWorld := SIGameWorldMorph new.
	sIParticle := SIParticle spawnMovingGameElementWithRessourceManager: (gameWorld ressourceManager) at: (100 @ 100) andSprite: 'Particle Sprite' andVerticalMoveDistance: -10.
	sIWallForm := (SIWall extent: 50 @ 50 depth: 32) configure.
	sIWallForm getCanvas fillColor: Color brown.
	sIWall := sIWallForm asMorph position: (75 @ 75).
	