testing
testMissingTextAttributeDoesNotIncreaseLineHeight

	| line |
	self text removeAttribute: self textAttribute.
	line := self composeLine.
	self assertHasDefaultHeight: line.