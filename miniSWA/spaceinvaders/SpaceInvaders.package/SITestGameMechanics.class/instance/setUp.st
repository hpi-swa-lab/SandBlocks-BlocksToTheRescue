as yet unclassified
setUp
	
	| sIWallForm |
	gameWorld := SIGame new.
	sIParticleDown := SIParticle spawnAt: (100 @ 100) withSprite:  (gameWorld ressourceManager getSprite: 'Particle Sprite') andVerticalMoveDistance: 10.
	sIParticleUp := SIParticle spawnAt: (100 @ 100) withSprite:  (gameWorld ressourceManager getSprite: 'Particle Sprite') andVerticalMoveDistance: -10.
	sIWallForm := (SIWall extent: 50 @ 50 depth: 32) configure.
	sIWallForm getCanvas fillColor: Color brown.
	sIWall := sIWallForm asMorph position: (75 @ 75).
	