testing
testCharacterBlockNextToMorph

	| characterBlock |
	characterBlock := self scanner characterBlockAtPoint: nil index: 5 in: self line.
	self assert: self fifthCharacterWidth @ self line lineHeight equals: characterBlock extent.