tests
testMessageIconSymbolPragma

	self
		assert: (ToolIcons iconForMethod: (MethodReference
			class: self class selector: #exampleMessageIconSymbolPragma))
		equals: self class flagIcon.