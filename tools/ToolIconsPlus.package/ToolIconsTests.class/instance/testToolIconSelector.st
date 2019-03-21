tests
testToolIconSelector

	self
		assertForm: (ToolIcons iconForMethod: (MethodReference
			class: self class selector: #exampleToolIconSelector))
		equals: self class flagIcon.