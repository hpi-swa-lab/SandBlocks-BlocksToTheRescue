testing
testMissingMorphDoesNotIncreaseLineHeight

	| line |
	self textAttribute anchoredBlock: nil.
	line := self composeLine.
	self assertHasDefaultHeight: line.