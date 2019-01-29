*IconsForMessages
classFor: selector
	self environment
		at: selector withBlanksTrimmed asSymbol
		ifPresent: [:class | ^ class].
	^ nil