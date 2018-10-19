as yet unclassified
spawnPlayer
	
	| sIPlayer |
	sIPlayer := SIPlayer new.
	self sIPlayer: sIPlayer.
	self addMorph: sIPlayer.
	sIPlayer setRelativePosition: (self playerSpawnPosition).