*ToolIconsPlus
metaToolIconSelector: aSymbol

	^ (self isNoArgumentMethod: aSymbol)
		ifTrue: [self metaColorIconFor: aSymbol]