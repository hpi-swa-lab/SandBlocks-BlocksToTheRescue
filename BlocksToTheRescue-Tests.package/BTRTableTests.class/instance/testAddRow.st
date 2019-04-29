tests - adding
testAddRow

	| oldRowCount |
	oldRowCount := self table rowCount.
	
	self table addRow.
	self assert: oldRowCount + 1 equals: self table rowCount.