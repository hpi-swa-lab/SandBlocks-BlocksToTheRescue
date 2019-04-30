tests - accessing
testAdjustColumns

	| oldColumnCount newColumnCount |
	
	oldColumnCount := self table columnCount.
	newColumnCount := oldColumnCount + 1.
	self table adjustColumnsTo: newColumnCount.
	self assert: newColumnCount equals: self table columnCount.
	
	oldColumnCount := self table columnCount.
	newColumnCount := oldColumnCount - 1.
	self table adjustColumnsTo: newColumnCount.
	self assert: newColumnCount equals: self table columnCount.
	
	