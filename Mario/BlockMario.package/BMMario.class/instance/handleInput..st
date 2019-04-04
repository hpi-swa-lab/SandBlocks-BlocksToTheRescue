as yet unclassified
handleInput: aSymbol

	aSymbol caseOf: {
		[#left] -> [self moveRight].
		[#right] -> [self moveLeft].
		[#up] -> [self jump].
		[#down] -> [self down]
	} otherwise: [].