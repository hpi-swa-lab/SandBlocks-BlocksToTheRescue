accessing
viewForModel: aBTRBlockModel

	^ [(BTRInlineViewDecorator for: aBTRBlockModel) 
		updateInlineView;
		attachBlockModel: aBTRBlockModel;
		yourself]
		on: Error
		do: [(Smalltalk at: #BTRIcons ifPresent: #brokenMorphIcon)
				ifNil: [ToolIcons not]]