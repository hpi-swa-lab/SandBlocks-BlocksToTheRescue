tests - removing
testRemoveRow

	| oldRowCount |
	oldRowCount := self table rowCount.
	
	self table removeRow.
	self assert: oldRowCount - 1 equals: self table rowCount.