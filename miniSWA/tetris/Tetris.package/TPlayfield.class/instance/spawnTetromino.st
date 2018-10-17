tetromino
spawnTetromino

	self tetromino ifNotNil: [:tetr | tetr abandon].
	
	self tetromino: TTetromino L.
	self tetromino openInWorld.
	self addMorph: self tetromino.
	self tetromino gridPosition: 4@0.
	
	