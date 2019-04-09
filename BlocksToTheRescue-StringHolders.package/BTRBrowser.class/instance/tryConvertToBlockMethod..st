block methods
tryConvertToBlockMethod: aMethod
	
	aMethod isBTRBlockMethod
		ifFalse: [
			self askForBlockModel ifNotNil: [:model | self installBlockMethodFrom: model]]