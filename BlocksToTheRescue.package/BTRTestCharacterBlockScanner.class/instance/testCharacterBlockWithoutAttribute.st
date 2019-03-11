testing
testCharacterBlockWithoutAttribute

	| characterBlock |
	self text removeAttribute: self textAttribute from: 1 to: self text size.
	self composeLine.
	characterBlock := self scanner characterBlockAtPoint: nil index: 5 in: self line.
	self assert: self fifthCharacterWidth @ self defaultLineHeight equals: characterBlock extent.