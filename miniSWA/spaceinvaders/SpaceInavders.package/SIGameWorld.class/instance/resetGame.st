as yet unclassified
resetGame

	self sIEnemies do: [ :enemy | self removeMorph: enemy].
	self sIEnemies: OrderedCollection new.
	self sIParticals do: [ :partical | self removeMorph: partical].
	self sIParticals: OrderedCollection new.
	self sIPlayer setPosition: (self playerSpawnPosition).
	self decreaseLife.
	