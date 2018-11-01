as yet unclassified
updateTetromino: aTPlayField

	((self tetromino isNil) and: [aTPlayField tetromino isNil not])
		ifTrue: [self spawnTetrominoView: aTPlayField tetromino]