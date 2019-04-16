tests
testMetaToolIconSelector

	self
		assertForm: (ToolIcons iconForClass: self class theMetaClass selector: #exampleMetaToolIconSelector)
		equals: self class flagIcon.