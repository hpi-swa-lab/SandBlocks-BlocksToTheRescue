accessing
rightElement: aPieceConnector

	| oldRightElement |
	oldRightElement := rightElement.
	rightElement := aPieceConnector.
	oldRightElement ifNotNil: [self removeMorph: oldRightElement].
	self addMorph: rightElement behind: leftElement.