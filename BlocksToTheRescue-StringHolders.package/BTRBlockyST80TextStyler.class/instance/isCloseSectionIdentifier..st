identifier-analysis
isCloseSectionIdentifier: aSymbol

	^ (aSymbol startsWith: 'right')
	or: [aSymbol includesSubstring: 'End']