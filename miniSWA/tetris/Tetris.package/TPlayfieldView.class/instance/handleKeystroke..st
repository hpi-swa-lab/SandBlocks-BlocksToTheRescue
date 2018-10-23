as yet unclassified
handleKeystroke: anEvent

	super handleKeystroke: anEvent.
	anEvent keyCharacter caseOf: {
		[Character arrowLeft] -> [self model inputLeft].
		[Character arrowRight] -> [self model inputRight].
		[Character arrowDown] -> [self model inputDown].
	} otherwise: [].