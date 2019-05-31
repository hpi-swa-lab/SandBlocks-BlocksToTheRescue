accessing
viewForModel: aBTRBlockModel

	| inlineViewDecorator |
	inlineViewDecorator := BTRInlineViewDecorator for: aBTRBlockModel.
	inlineViewDecorator blockModel inlineView isMorph "May be nil" 
		ifTrue: [inlineViewDecorator
			updateInlineView;
			attachBlockModel: aBTRBlockModel]
		ifFalse: [inlineViewDecorator extent: self missingInlineViewExtent].
	^ inlineViewDecorator