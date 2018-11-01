rotation tests
rotate: aTTetromino rightAndCheckBlocks: aCollection

	aTTetromino rotateRightUnchecked.
	self assert: aCollection asSet equals: aTTetromino blockPositions asSet.