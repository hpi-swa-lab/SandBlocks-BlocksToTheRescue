tests
testIconNameRedirect

	self
		assertForm: ToolIcons flag
		equals: (ToolIcons iconNamed: #flag).