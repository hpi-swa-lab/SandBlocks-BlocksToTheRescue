tests - adding
testAddColumn

	| oldColumnCount |
	oldColumnCount := self table columnCount.
	
	self table addColumn.
	self assert: oldColumnCount + 1 equals: self table columnCount.