placement tests
testCanPlaceOutOfBounds

	self LTetromino gridPosition: -1 @ -1.
	self deny: (self LTetromino canBePlacedInto: self playfield)