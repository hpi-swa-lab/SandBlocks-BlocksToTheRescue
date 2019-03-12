testing
testCharacterBlockOfMorphIsLargeEnough

	| characterBlock |
	characterBlock := self scanner characterBlockAtPoint: nil index: 4 in: self line.
	self assert: self morph extent <= characterBlock extent.