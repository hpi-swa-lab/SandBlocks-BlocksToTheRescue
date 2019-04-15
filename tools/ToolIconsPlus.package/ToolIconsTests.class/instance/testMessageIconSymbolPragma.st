tests
testMessageIconSymbolPragma

	self
		assertForm: (ToolIcons iconForClass: self class selector: #exampleMessageIconSymbolPragma)
		equals: self class flagIcon.