tests - accessing
testAdjustRows

	| oldRowCount newRowCount |
	
	oldRowCount := self table rowCount.
	newRowCount := oldRowCount + 1.
	self table adjustRowsTo: newRowCount.
	self assert: newRowCount equals: self table rowCount.
	
	oldRowCount := self table rowCount.
	newRowCount := oldRowCount - 1.
	self table adjustRowsTo: newRowCount.
	self assert: newRowCount equals: self table rowCount.
	
	