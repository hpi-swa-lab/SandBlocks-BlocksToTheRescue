*ToolIconsPlus
metaToolIconSelector: aSymbol

	^ (self isColorConstant: aSymbol)
		ifTrue: [(self perform: aSymbol) asIcon]
		ifFalse: [nil]