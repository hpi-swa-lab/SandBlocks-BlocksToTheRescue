as yet unclassified
step

	(self tetromino canMoveDownIn: self)
		ifTrue: [self tetromino moveDown]
		ifFalse: [
			self tetromino placeInto: self.
			self spawnTetromino].
	self changed.