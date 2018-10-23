as yet unclassified
spawnTetrominoView: aTTetromino

	self tetromino: TTetrominoView new.
	self tetromino openInWorld.
	self addMorph: self tetromino.
	aTTetromino addDependent: self tetromino.
	self tetromino update: aTTetromino.