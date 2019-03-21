*ToolIconsPlus
isNoArgumentMethod: aSymbol

	^ (self respondsTo: aSymbol)
		and: [aSymbol numArgs = 0]