*IconsForMessages
isProbablyColorReturningMethod: messageSymbol

	^ (self isMethodClassVariableGetter: messageSymbol)
		or: [self isMethodRGBColorConstant: messageSymbol]