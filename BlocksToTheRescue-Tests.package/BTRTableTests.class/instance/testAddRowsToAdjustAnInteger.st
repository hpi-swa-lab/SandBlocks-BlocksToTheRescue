tests - adding
testAddRowsToAdjustAnInteger

	| oldRowCount newRowCount |
	
	oldRowCount := self table rowCount.
	newRowCount := 2 * oldRowCount.
	self table addRowsToAdjustTo: newRowCount.
	self assert: newRowCount equals: self table rowCount.
	
	oldRowCount := self table rowCount.
	newRowCount := oldRowCount - 1.
	self table addRowsToAdjustTo: newRowCount.
	self assert: oldRowCount equals: self table rowCount.