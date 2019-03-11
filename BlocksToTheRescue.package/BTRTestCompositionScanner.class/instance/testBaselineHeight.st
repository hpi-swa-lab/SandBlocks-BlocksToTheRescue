testing
testBaselineHeight

	| line |
	line := self composeLine.
	self assert: line baseline >= (self morph height / 2 + (self textAttribute embeddedObjectPadding at: #top)).