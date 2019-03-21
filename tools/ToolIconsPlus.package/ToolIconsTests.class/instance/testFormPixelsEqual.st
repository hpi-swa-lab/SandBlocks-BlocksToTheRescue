tests
testFormPixelsEqual

	self assert: (ToolIcons flag isPixelsEqualTo: ToolIcons flag copy).
	self assert: (ToolIcons flag isPixelsEqualTo: ToolIcons breakpoint) not.