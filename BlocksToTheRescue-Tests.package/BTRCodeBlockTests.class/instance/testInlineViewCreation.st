as yet unclassified
testInlineViewCreation

	[ (BTRCodeModel for: 'x * x') inlineView
		openInWorld;
		abandon ]
		on: Exception do: [ :e | self fail: e ].