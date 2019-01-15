*IconsForMessages
metaToolIconSelector: aSymbol

	(self isColorConstant: aSymbol)
		ifTrue: [^ #testRed].
	^ #blank