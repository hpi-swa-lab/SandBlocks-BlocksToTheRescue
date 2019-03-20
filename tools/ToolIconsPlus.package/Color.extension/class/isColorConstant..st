*ToolIconsPlus
isColorConstant: aSymbol

	^ (self isNoArgumentMethod: aSymbol)
		and: [self isProbablyColorReturningMethod: aSymbol]