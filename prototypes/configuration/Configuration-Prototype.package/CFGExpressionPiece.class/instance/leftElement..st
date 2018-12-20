accessing
leftElement: aMorph

	| oldLeftElement |
	oldLeftElement := leftElement.
	leftElement := aMorph.
	oldLeftElement ifNotNil: [self removeMorph: oldLeftElement].
	self addMorphFront: leftElement.