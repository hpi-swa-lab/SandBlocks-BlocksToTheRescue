block methods
tryConvertToBlockModel: aCompiledMethod

	aCompiledMethod isBTRBlockModel ifTrue: [^ aCompiledMethod].

	^ self askForBlockModel