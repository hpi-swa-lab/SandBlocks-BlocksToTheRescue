rotation tests
testRotateSTetromino

	self assert: { 0@1. 1@1. 1@0. 2@0 } asSet equals: self STetromino blockPositions asSet.
	self rotate: self STetromino rightAndCheckBlocks: { 1@0. 1@1. 2@1. 2@2 }.
	self rotate: self STetromino rightAndCheckBlocks: { 1@1. 2@1. 0@2. 1@2 }.
	self rotate: self STetromino rightAndCheckBlocks: { 0@0. 0@1. 1@1. 1@2 }.
	self rotate: self STetromino rightAndCheckBlocks: { 0@1. 1@1. 1@0. 2@0 }.