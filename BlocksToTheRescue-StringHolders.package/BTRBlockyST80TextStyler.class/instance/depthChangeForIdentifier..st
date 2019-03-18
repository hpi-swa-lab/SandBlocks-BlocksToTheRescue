identifier-analysis
depthChangeForIdentifier: aSymbol

	(self isOpenSectionIdentifier: aSymbol) ifTrue: [^ 1].
	(self isCloseSectionIdentifier: aSymbol) ifTrue: [^ -1].
	^ 0