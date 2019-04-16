styling
hasUnacceptedEdits: aBoolean

	super hasUnacceptedEdits: aBoolean.
	aBoolean ifTrue: [self cellModel changed].