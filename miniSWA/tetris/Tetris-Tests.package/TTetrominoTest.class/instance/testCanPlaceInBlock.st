placement tests
testCanPlaceInBlock

	self playfield gridAt: 1@1 put: TBlock new.
	self LTetromino gridPosition: 0@0.
	self deny: (self LTetromino canBePlacedInto: self playfield).