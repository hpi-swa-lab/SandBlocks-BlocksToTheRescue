as yet unclassified
atSelector: aSymbol

	^ self atSelector: aSymbol ifAbsent: [self error: 'UnknownSelector'] 