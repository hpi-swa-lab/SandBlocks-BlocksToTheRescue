tests
testIconNameRedirect

	self
		assert: ToolIcons flag
		equals: (ToolIcons iconNamed: #flag).