accessing
rightElement: aMorph

	| oldRightElement|
	oldRightElement := rightElement.
	rightElement := aMorph.
	oldRightElement ifNotNil: [self removeMorph: oldRightElement].
	self addMorphBack: rightElement.