tests
testToolIconSelector

	self
		assert: (ToolIcons iconForMethod: (MethodReference
			class: self class selector: #exampleToolIconSelector))
		equals: self class flagIcon.