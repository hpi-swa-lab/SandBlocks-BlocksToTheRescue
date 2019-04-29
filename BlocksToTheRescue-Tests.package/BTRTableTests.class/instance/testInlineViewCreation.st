tests - views
testInlineViewCreation

	[self table inlineView
		openInWorld;
		abandon]
		on: Exception do: [:exception | self fail: exception].