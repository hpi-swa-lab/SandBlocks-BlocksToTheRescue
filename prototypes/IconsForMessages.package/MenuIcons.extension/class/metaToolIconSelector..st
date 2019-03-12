*IconsForMessages
metaToolIconSelector: aSymbol

	^ (aSymbol endsWith: 'Icon')
		ifTrue: [((self perform: aSymbol) scaledToSize: 12) outsetBorder: Color gray width: 1]
		ifFalse: [super metaToolIconSelector: aSymbol]