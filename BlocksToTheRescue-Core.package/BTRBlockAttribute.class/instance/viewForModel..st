accessing
viewForModel: aBTRBlockModel

	^ aBTRBlockModel inlineView
		setProperty: #BTRBlockModel toValue: aBTRBlockModel;
		yourself