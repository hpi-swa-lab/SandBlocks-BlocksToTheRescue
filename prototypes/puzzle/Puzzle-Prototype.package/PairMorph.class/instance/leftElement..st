accessing
leftElement: aPieceConnector

	| oldLeftElement |
	oldLeftElement := leftElement.
	leftElement := aPieceConnector.
	oldLeftElement ifNotNil: [self removeMorph: oldLeftElement].
	self addMorph: leftElement inFrontOf: self rightElement.