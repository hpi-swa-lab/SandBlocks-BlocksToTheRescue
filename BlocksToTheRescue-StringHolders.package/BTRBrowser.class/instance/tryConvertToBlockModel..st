block methods
tryConvertToBlockModel: aCompiledMethod

	aCompiledMethod isBTRBlockModel ifTrue: [^ aCompiledMethod].

	^ (self canConvertToBlockModel: aCompiledMethod)
		ifTrue: [self convertToBlockModel: aCompiledMethod]
		ifFalse: [self askForBlockModel]