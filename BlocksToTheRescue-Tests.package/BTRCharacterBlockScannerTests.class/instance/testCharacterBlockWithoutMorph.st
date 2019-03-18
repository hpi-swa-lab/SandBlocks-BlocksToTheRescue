testing
testCharacterBlockWithoutMorph

	| characterBlock |
	self textAttribute anchoredBlock: nil.
	self composeLine.
	characterBlock := self scanner characterBlockAtPoint: nil index: 5 in: self line.
	self assert: self fifthCharacterWidth @ self defaultLineHeight equals: characterBlock extent.