*ToolIconsPlus
icon: aSymbolOrFormOrCollection

	aSymbolOrFormOrCollection isForm
		ifTrue: [^ aSymbolOrFormOrCollection].
	aSymbolOrFormOrCollection isSymbol
		ifTrue: [^ self iconNamed: aSymbolOrFormOrCollection].
	aSymbolOrFormOrCollection isCollection
		ifTrue: [^ self overlayIcons: aSymbolOrFormOrCollection].
	^ self emptyIcon