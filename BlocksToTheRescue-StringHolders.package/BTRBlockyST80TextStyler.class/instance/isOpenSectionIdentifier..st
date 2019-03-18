identifier-analysis
isOpenSectionIdentifier: aSymbol

	^ (aSymbol startsWith: 'left')
	or: [aSymbol includesSubstring: 'Start']