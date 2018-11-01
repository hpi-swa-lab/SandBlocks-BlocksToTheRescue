rotation tests
testRotateZTetromino

	self assert: { 0@0. 1@0. 1@1. 2@1 } asSet equals: self ZTetromino blockPositions asSet.
	self rotate: self ZTetromino rightAndCheckBlocks: { 2@0. 2@1. 1@1. 1@2 }.
	self rotate: self ZTetromino rightAndCheckBlocks: { 0@1. 1@1. 1@2. 2@2 }.
	self rotate: self ZTetromino rightAndCheckBlocks: { 0@2. 0@1. 1@1. 1@0 }.
	self rotate: self ZTetromino rightAndCheckBlocks: { 0@0. 1@0. 1@1. 2@1 }.