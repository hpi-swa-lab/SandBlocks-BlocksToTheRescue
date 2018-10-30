rotation tests
testRotateOTetromino

	self assert: { 0@0. 1@1. 0@1. 1@0 } asSet equals: self OTetromino blockPositions asSet.
	self rotate: self OTetromino rightAndCheckBlocks: { 0@0. 1@1. 0@1. 1@0 }.
	self rotate: self OTetromino rightAndCheckBlocks: { 0@0. 1@1. 0@1. 1@0 }.
	self rotate: self OTetromino rightAndCheckBlocks: { 0@0. 1@1. 0@1. 1@0 }.
	self rotate: self OTetromino rightAndCheckBlocks: { 0@0. 1@1. 0@1. 1@0 }.