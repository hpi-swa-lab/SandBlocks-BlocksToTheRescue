tests - accessing
testAccessingCellValue

	| oldValue newValue |
	oldValue := self table valueAt: 1 at: 1.
	newValue := oldValue * 2.
	self table at: 1 at: 1 putValue: newValue.
	self assert: newValue equals: (self table valueAt: 1 at: 1).