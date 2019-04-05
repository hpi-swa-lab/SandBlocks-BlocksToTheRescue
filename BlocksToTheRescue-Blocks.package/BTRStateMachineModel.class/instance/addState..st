accessing
addState: aSymbol

	^ self states at: aSymbol put: (BTRState named: aSymbol)