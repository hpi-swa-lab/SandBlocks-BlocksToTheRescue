as yet unclassified
testInlineViewCreation

	[ self class exampleGraph inlineView
		openInWorld;
		abandon ]
		on: Exception do: [ :e | self fail: e ].