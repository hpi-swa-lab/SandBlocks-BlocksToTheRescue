*IconsForMessages
isColorConstant: aSymbol

	^ (self respondsTo: aSymbol)
		and: [aSymbol numArgs = 0]
		and: [(self perform: aSymbol) isColor]