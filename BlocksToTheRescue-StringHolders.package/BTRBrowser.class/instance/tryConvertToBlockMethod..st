block methods
tryConvertToBlockMethod: aMethod
	
	^ aMethod isBTRBlockMethod
		ifTrue: [aMethod]
		ifFalse: [self askForBlockModel]