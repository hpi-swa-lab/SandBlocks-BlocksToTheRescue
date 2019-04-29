tests - removing
testRemoveRowsToAdjustAnInteger

	| oldRowCount newRowCount |
	
	oldRowCount := self table rowCount.
	newRowCount := oldRowCount - 1.
	self table removeRowsToAdjustTo: newRowCount.
	self assert: newRowCount equals: self table rowCount.
	
	oldRowCount := self table rowCount.
	newRowCount := oldRowCount + 1.
	self table removeRowsToAdjustTo: newRowCount.
	self assert: oldRowCount equals: self table rowCount.