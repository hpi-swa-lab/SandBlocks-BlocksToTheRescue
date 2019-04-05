input
handleInput: aSymbol inWorld: aBMGameWorld

	aSymbol caseOf: {
		[#left] -> [self moveRight].
		[#right] -> [self moveLeft].
		[#up] -> [(aBMGameWorld physics isStandingOnSomething: self) 
						ifTrue: [self initJump]
						ifFalse: [self jump]].
		[#down] -> [self down]
	} otherwise: [].