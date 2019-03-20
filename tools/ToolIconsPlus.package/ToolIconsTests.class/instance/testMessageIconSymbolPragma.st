tests
testMessageIconSymbolPragma

	self
		assertForm: (ToolIcons iconForMethod: (MethodReference
			class: self class selector: #exampleMessageIconSymbolPragma))
		equals: self class flagIcon.