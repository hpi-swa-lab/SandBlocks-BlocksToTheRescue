*BlocksToTheRescue
invalidRect: aRectangle from: aMorph

	self text ifNotNil: [:theText|
		(theText embeddedMorphs includes: aMorph)
			ifTrue: [
				self paragraph composeAll.
				self fit]].
	^ super invalidRect: aRectangle from: aMorph