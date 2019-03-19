tests
testMetaToolIconSelector

	self
		assert: (ToolIcons iconForMethod: (MethodReference
			class: self class theMetaClass selector: #exampleMetaToolIconSelector))
		equals: self class flagIcon.