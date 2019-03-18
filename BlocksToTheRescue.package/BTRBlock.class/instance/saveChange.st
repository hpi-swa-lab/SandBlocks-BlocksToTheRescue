editing
saveChange

	(self owner isNil not and: [self owner respondsTo: #hasUnacceptedEdits:])
		ifTrue: [self owner hasUnacceptedEdits: true].