tests - removing
testRemoveColumn

	| oldColumnCount |
	oldColumnCount := self table columnCount.
	
	self table removeColumn.
	self assert: oldColumnCount - 1 equals: self table columnCount.