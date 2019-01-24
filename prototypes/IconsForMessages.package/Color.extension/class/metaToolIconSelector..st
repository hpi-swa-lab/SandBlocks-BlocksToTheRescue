*IconsForMessages
metaToolIconSelector: aSymbol

	(self isColorConstant: aSymbol)
		ifTrue: [^ MethodReference class: self selector: aSymbol].
	^ #blank