updating
gameStateChanged: aSymbol

	aSymbol caseOf: {
		[#won] -> [self message: 'You Won!'].
		[#lost] -> [self message: 'You Lost!']}