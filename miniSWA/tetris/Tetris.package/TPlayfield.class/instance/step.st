stepping and presenter
step

	(self tetromino canMoveDownIn: self)
		ifTrue: [self tetromino moveDown]
		ifFalse: [
			self tetromino placeInto: self.
			self spawnTetromino].