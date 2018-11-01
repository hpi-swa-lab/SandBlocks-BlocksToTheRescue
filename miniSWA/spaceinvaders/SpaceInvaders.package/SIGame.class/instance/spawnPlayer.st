as yet unclassified
spawnPlayer
	
	| sIPlayer |
	sIPlayer := SIEnemy spawnAt: (self playerSpawnPosition) withSprite: (self ressourceManager getSprite: 'Player Sprite').
	self sIPlayer: sIPlayer.
	self addMorph: sIPlayer.