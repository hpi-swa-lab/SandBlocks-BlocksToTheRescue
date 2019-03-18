testing
testMissingSpecialCharacterDoesNotIncreaseLineHeight

	| line |
	self text at: 4 put: $a.
	line := self composeLine.
	self assertHasDefaultHeight: line.
		