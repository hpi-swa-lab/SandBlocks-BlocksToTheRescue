as yet unclassified
resetGame

	self sIEnemies do: [ :enemy | self removeMorph: enemy].
	self sIEnemies: OrderedCollection new.
	self sIParticles do: [ :particle | self removeMorph: particle].
	self sIParticles: OrderedCollection new.
	self sIPlayer setRelativePosition: (self playerSpawnPosition).
	self decreaseLife.
	