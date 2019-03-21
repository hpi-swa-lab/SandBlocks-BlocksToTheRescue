*ToolIconsPlus
icon: aSymbolOrForm

	aSymbolOrForm isForm ifTrue: [^ aSymbolOrForm].
	aSymbolOrForm isSymbol ifTrue: [^ self iconNamed: aSymbolOrForm].
	^ self emptyIcon