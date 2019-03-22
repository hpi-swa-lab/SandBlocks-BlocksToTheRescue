testing
testMissingMorphDoesNotIncreaseLineHeight

	| line |
	self textAttribute blockModel: nil.
	line := self composeLine.
	self assertHasDefaultHeight: line.