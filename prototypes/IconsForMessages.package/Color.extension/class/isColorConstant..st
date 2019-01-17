*IconsForMessages
isColorConstant: aSymbol

	^ (self respondsTo: aSymbol)
		and: [aSymbol numArgs = 0]
		and: [self probablyIsColorReturningMethod: aSymbol]