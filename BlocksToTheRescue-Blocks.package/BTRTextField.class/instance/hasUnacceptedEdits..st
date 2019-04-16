styling
hasUnacceptedEdits: aBoolean

	super hasUnacceptedEdits: aBoolean.
	aBoolean ifTrue: [self model tableModel changed].