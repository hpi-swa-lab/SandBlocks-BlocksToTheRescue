accessing
morph: aMorph

	morph := aMorph.
	self blockModel ifNotNil: [self blockModel value: aMorph]