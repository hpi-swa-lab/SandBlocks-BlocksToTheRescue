tests
testMultipleIcons

	self
		assertForm: (ToolIcons iconForMethod: (MethodReference
			class: self class selector: #exampleMultipleIcons))
		equals: self class flagIconWithTestRedIconOnTop.