accessing
viewForModel: aBTRBlockModel

	^ (BTRInlineViewDecorator for: aBTRBlockModel) 
		updateInlineView;
		attachBlockModel: aBTRBlockModel;
		yourself