rotation tests
testRotateITetromino

	self assert: { 0@1. 1@1. 2@1. 3@1 } asSet equals: self ITetromino blockPositions asSet.
	self rotate: self ITetromino rightAndCheckBlocks: { 2@0. 2@1. 2@2. 2@3 }.
	self rotate: self ITetromino rightAndCheckBlocks: { 0@2. 1@2. 2@2. 3@2 }.
	self rotate: self ITetromino rightAndCheckBlocks: { 1@0. 1@1. 1@2. 1@3 }.
	self rotate: self ITetromino rightAndCheckBlocks: { 0@1. 1@1. 2@1. 3@1 }.