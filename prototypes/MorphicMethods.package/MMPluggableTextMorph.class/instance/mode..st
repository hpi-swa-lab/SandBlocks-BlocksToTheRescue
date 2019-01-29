accessing
mode: aSymbol

	self setProperty: #displayMode toValue: aSymbol.
	aSymbol = #showTool
		ifTrue: [self showTool].
	aSymbol = #showText
		ifTrue: [self showText].