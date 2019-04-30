tests - adding
testAddColumns

	| oldColumnCount newColumnCount |
	
	oldColumnCount := self table columnCount.
	newColumnCount := 2 * oldColumnCount.
	self table addColumnsToAdjustTo: newColumnCount.
	self assert: newColumnCount equals: self table columnCount.
	
	oldColumnCount := self table columnCount.
	newColumnCount := oldColumnCount - 1.
	self table addColumnsToAdjustTo: newColumnCount.
	self assert: oldColumnCount equals: self table columnCount.