accessing - model
rowExpression: aText

	self rowCount: aText asString asInteger.
	self rowTextField hasUnacceptedEdits: false.
	self update.