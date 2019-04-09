input
handleInput: aSymbol inWorld: aBMGameWorld

	aSymbol caseOf: {
		[#left] -> [self moveRight].
		[#right] -> [self moveLeft].
		[#up] -> [self initJump. self jump].
		[#down] -> [self down]
	} otherwise: [].