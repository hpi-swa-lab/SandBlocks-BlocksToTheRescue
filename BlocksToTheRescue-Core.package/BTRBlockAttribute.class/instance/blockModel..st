accessing
blockModel: anObject

	blockModel := anObject isBTRBlockModel 
		ifTrue: [anObject]
		ifFalse: [BTRAbstractBlockModel forObject: anObject].
	anchoredMorph := nil. "Reset view cache"