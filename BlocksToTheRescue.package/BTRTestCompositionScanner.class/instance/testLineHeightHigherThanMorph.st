testing
testLineHeightHigherThanMorph

	| line |
	line := self composeLine.
	self assert: line lineHeight >= (self morph height + self textAttribute verticalPadding).