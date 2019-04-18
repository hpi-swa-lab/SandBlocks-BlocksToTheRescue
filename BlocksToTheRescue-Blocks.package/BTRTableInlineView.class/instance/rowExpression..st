accessing - model
rowExpression: aText

	self tableModel rowCount: aText asString asInteger.
	self rowTextField hasUnacceptedEdits: false.