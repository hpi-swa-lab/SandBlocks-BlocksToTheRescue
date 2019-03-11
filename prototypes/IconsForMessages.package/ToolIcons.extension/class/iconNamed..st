*IconsForMessages
iconNamed: aSymbol

	^self icons
		at: aSymbol
		ifAbsentPut: [(self respondsTo: aSymbol)
			ifTrue: [self perform: aSymbol]
			ifFalse: [self perform: (aSymbol asString, 'Icon') asSymbol]]