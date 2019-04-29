tests - removing
testRemoveColumnsToAdjustAnInteger

	| oldColumnCount newColumnCount |
	
	oldColumnCount := self table columnCount.
	newColumnCount := oldColumnCount - 1.
	self table removeColumnsToAdjustTo: newColumnCount.
	self assert: newColumnCount equals: self table columnCount.
	
	oldColumnCount := self table columnCount.
	newColumnCount := oldColumnCount + 1.
	self table removeColumnsToAdjustTo: newColumnCount.
	self assert: oldColumnCount equals: self table columnCount.