as yet unclassified
testInlineViewCreation

	[ self class fixture inlineView
		openInWorld;
		abandon ]
		on: Exception do: [ :e | self fail: e ].