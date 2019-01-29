as yet unclassified
update: aspect with: aSymbol

	super update: aspect with: aSymbol.
	aspect = #mode
		ifTrue: [self mode: aSymbol].