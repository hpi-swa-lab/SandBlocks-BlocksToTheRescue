accessing
blockModel: anObject

	blockModel := anObject isBTRBlockModel 
		ifTrue: [anObject]
		ifFalse: [BTRConstantModel for: anObject].
	anchoredMorph := nil. "Reset view cache"