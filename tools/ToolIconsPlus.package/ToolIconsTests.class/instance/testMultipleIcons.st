tests
testMultipleIcons

	self
		assertForm: (ToolIcons iconForClass: self class selector: #exampleMultipleIcons)
		equals: self class flagIconWithTestRedIconOnTop.