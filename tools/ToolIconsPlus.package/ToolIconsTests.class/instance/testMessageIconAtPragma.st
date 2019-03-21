tests
testMessageIconAtPragma

	self
		assert: (ToolIcons iconForMethod: (MethodReference
			class: self class selector: #exampleMessageIconAtPragma))
		equals: self class flagIcon.