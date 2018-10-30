rotation tests
testRotateJTetromino

	self assert: { 0@1. 0@0. 1@1. 2@1 } asSet equals: self JTetromino blockPositions asSet.
	self rotate: self JTetromino rightAndCheckBlocks: { 1@0. 1@1. 1@2. 2@0 }.
	self rotate: self JTetromino rightAndCheckBlocks: { 0@1. 1@1. 2@1. 2@2 }.
	self rotate: self JTetromino rightAndCheckBlocks: { 1@0. 1@1. 1@2. 0@2 }.
	self rotate: self JTetromino rightAndCheckBlocks: { 0@1. 0@0. 1@1. 2@1 }.