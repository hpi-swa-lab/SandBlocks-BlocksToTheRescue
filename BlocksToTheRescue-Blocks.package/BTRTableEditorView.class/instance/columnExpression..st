accessing
columnExpression: aText

	self tableModel columnCount: aText asString asInteger.
	self columnTextField hasUnacceptedEdits: false.