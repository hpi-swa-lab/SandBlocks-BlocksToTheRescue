initialize-release
spawnTetromino

	self tetromino: TTetromino random.
	self tetromino gridPosition: self gridWidth / 2 @ 0.
	(self tetromino canBePlacedInto: self)
		ifFalse: [self gameOver].
	self changed.