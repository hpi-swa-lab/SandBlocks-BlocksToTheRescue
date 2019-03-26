testing
testMissingMorphDoesNotIncreaseLineHeight

	| line |
	self textAttribute blockModel: BTRMockModel new.
	line := self composeLine.
	self assertHasDefaultHeight: line.