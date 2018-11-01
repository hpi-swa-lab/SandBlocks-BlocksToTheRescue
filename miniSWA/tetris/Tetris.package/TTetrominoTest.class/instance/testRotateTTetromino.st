rotation tests
testRotateTTetromino

	self assert: { 0@1. 1@1. 2@1. 1@0 } asSet equals: self TTetromino blockPositions asSet.
	self rotate: self TTetromino rightAndCheckBlocks: { 1@0. 1@1. 1@2. 2@1 }.
	self rotate: self TTetromino rightAndCheckBlocks: { 0@1. 1@1. 2@1. 1@2 }.
	self rotate: self TTetromino rightAndCheckBlocks: { 1@0. 1@1. 1@2. 0@1 }.
	self rotate: self TTetromino rightAndCheckBlocks: { 0@1. 1@1. 2@1. 1@0 }.