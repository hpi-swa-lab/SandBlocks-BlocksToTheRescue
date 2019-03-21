tests
testMetaToolIconSelector

	self
		assertForm: (ToolIcons iconForMethod: (MethodReference
			class: self class theMetaClass selector: #exampleMetaToolIconSelector))
		equals: self class flagIcon.