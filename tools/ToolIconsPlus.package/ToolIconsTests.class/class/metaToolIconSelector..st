icons
metaToolIconSelector: aSymbol

	^ (aSymbol = #exampleMetaToolIconSelector)
		ifTrue: [#flag]
		ifFalse: [super metaToolIconSelector: aSymbol]