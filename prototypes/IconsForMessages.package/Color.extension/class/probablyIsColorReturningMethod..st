*IconsForMessages
probablyIsColorReturningMethod: messageSymbol

	^ (self isMethodClassVariableGetter: messageSymbol)
		or: [self isMethodRGBColorConstant: messageSymbol]