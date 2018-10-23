as yet unclassified
spawnTetromino

	self tetromino: TTetromino L.
	self tetromino gridPosition: self gridWidth / 2 @ 0.
	(self tetromino canBePlacedInto: self)
		ifFalse: [self gameOver].
	self changed.