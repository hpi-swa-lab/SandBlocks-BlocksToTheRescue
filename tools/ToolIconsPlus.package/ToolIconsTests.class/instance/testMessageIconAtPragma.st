tests
testMessageIconAtPragma

	self
		assertForm: (ToolIcons iconForMethod: (MethodReference
			class: self class selector: #exampleMessageIconAtPragma))
		equals: self class flagIcon.