input
inputDown

	[self tetromino canMoveDownIn: self]
		whileTrue: [self tetromino moveDown].
	self tetromino placeInto: self.
	self spawnTetromino.