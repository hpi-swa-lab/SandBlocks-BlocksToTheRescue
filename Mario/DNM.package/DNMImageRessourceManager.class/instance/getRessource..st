accessing
getRessource: aSymbol
	"This method returns an (Animated)ImageMorph corresponding to the filename in the symbolTable."
	^(ressourcesBySymbol at: aSymbol ifAbsent: [self error: ('No ressource with symbol: #', aSymbol asString)]) copy
	 