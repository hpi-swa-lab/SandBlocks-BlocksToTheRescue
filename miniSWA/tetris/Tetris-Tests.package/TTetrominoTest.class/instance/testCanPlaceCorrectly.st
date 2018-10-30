placement tests
testCanPlaceCorrectly

	self LTetromino gridPosition: 0 @ 0.
	self assert: (self LTetromino canBePlacedInto: self playfield).