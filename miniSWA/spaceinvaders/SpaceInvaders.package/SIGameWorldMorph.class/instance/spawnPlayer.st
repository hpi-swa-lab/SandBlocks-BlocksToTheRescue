as yet unclassified
spawnPlayer
	
	| sIPlayer |
	sIPlayer := SIEnemy spawnMovingGameElementWithRessourceManager: (self ressourceManager) at: (self playerSpawnPosition) andSprite: 'Player Sprite'.
	self sIPlayer: sIPlayer.
	self addMorph: sIPlayer.