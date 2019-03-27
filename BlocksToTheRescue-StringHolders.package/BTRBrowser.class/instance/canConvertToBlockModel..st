block methods
canConvertToBlockModel: aCompiledMethod

	^ (aCompiledMethod pragmaAt: #BTRBlockModel) isNil not