as yet unclassified
spawnPlayer
	
	| sIPlayer |
	sIPlayer := SIPlayer newWithRessourceManager: self ressourceManager.
	self sIPlayer: sIPlayer.
	self addMorph: sIPlayer.
	sIPlayer setSprite: 'Player Sprite'.
	sIPlayer setRelativePosition: (self playerSpawnPosition).