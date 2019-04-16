tests
testToolIconSelector

	self
		assertForm: (ToolIcons iconForClass: self class selector: #exampleToolIconSelector)
		equals: self class flagIcon.