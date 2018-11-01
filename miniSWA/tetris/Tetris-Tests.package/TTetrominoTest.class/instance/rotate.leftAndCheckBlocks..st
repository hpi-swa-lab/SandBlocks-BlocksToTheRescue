rotation tests
rotate: aTTetromino leftAndCheckBlocks: aCollection

	aTTetromino rotateLeftUnchecked.
	self assert: aCollection asSet equals: aTTetromino blockPositions asSet.