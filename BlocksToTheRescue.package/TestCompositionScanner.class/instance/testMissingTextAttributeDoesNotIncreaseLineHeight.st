testing
testMissingTextAttributeDoesNotIncreaseLineHeight

	| line |
	self text removeAttribute: self textAttribute from: 1 to: self text size.
	line := self composeLine.
	self assertHasDefaultHeight: line.