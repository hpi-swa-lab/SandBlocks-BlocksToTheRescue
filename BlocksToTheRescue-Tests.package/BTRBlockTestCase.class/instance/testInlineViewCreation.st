as yet unclassified
testInlineViewCreation

	[ self createPlainInstance inlineView
		openInWorld;
		abandon ]
		on: Exception do: [ :e | self fail: e ].