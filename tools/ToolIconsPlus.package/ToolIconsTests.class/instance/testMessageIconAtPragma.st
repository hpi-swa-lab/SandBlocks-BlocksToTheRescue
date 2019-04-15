tests
testMessageIconAtPragma

	self
		assertForm: (ToolIcons iconForClass: self class selector: #exampleMessageIconAtPragma)
		equals: self class flagIcon.