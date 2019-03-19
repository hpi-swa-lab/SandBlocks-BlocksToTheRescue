*ToolIconsPlus
iconNamed: aSymbol

	^ self icons
		at: aSymbol
		ifAbsent: [(self tryFindIcon: aSymbol)
			ifNil: [self brokenMorph]
			ifNotNil: [:icon | self icons at: aSymbol put: icon]]