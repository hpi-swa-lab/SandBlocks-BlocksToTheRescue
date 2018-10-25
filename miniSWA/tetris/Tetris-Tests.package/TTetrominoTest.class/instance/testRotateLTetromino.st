rotation tests
testRotateLTetromino

	self assert: { 0@1. 1@1. 2@1. 2@0 } asSet equals: self LTetromino blockPositions asSet.
	self rotate: self LTetromino rightAndCheckBlocks: { 1@0. 1@1. 1@2. 2@2 }.
	self rotate: self LTetromino rightAndCheckBlocks: { 0@1. 1@1. 2@1. 0@2 }.
	self rotate: self LTetromino rightAndCheckBlocks: { 1@0. 1@1. 1@2. 0@0 }.
	self rotate: self LTetromino rightAndCheckBlocks: { 0@1. 1@1. 2@1. 2@0 }.