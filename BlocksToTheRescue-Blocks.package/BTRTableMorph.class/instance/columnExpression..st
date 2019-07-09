accessing - model
columnExpression: aText

	self columnCount: aText asString asInteger.
	self columnTextField hasUnacceptedEdits: false.
	self update.