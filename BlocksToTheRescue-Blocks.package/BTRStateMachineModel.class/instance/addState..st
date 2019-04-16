accessing
addState: aSymbol

	^ self states at: aSymbol put: (self pvtCreateState: aSymbol)