as yet unclassified
placeInto: aTPlayfield

	[self submorphs isEmpty] whileFalse: [
		| each |
		each := self submorphs first.
		aTPlayfield gridAt: each gridPosition + self gridPosition put: each.
		aTPlayfield addMorph: each].