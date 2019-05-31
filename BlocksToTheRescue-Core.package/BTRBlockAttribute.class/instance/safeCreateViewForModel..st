accessing
safeCreateViewForModel: aBTRBlockModel

	^ [self viewForModel: aBTRBlockModel]
		on: Error
		do: [(Smalltalk at: #BTRIcons ifPresent: #brokenMorphIcon)
				ifNil: [ToolIcons no]]