testing
testLineHeightHigherThanMorph

	| line inlineViewDecorator |
	line := self composeLine.
	inlineViewDecorator := self morph owner.
	self assert: line lineHeight >= (inlineViewDecorator height + self textAttribute verticalPadding).