initialize-release
initializeFor: aColorSymbol

	aColorSymbol caseOf: {
		[#yellow] -> [self initializeYellow].
		[#green] -> [self initializeGreen].
		[#orange] -> [self initializeOrange].
		[#red] -> [self initializeRed]}.