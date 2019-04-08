block methods
tryConvertToBlockModel: aMethod
	
	^ aMethod isBTRBlockMethod
		ifTrue: [aMethod blockModel]
		ifFalse: [self askForBlockModel]