icons
toolIconSelector: aSymbol

	^ (aSymbol = #exampleToolIconSelector)
		ifTrue: [#flag]
		ifFalse: [super toolIconSelector: aSymbol]