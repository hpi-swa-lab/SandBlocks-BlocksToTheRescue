as yet unclassified
hasUnacceptedEdits: aBoolean
	
	super hasUnacceptedEdits: aBoolean.
	aBoolean ifTrue: [self model changed].