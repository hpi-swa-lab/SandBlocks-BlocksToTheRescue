accessing
inlineMorph: aMorph

	inlineMorph ifNotNil: [self removeAllMorphs].
	inlineMorph := aMorph.
	inlineMorph ifNotNil: [self addMorph: inlineMorph].