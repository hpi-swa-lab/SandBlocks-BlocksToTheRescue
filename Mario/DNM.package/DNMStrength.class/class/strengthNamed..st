instance creation
strengthNamed: aSymbol
	^self strengthsByName at: aSymbol ifAbsent: [self error: aSymbol,' is not a strength.']