as yet unclassified
handleInput: aSymbol

	aSymbol caseOf: {
		[#left] -> [self moveRight].
		[#right] -> [self moveLeft].
		[#up] -> [self jump].
	} otherwise: [].