accessing
viewForModel: aBTRBlockModel

	| theView |
	theView := aBTRBlockModel inlineView.
	theView isMorph "May be nil"
		ifTrue: [theView setProperty: #BTRBlockModel toValue: aBTRBlockModel].
	^ theView