accessing
blockModel: anObject

	blockModel := anObject isBTRBlockModel 
		ifTrue: [anObject]
		ifFalse: [(Smalltalk at: #BTRAbstractBlockModel ifPresent: [:model | model newFrom: anObject])
			ifNil: [self error: 'Cannot convert "', anObject, '" into a BTRBlockModel']].
	anchoredMorph := nil. "Reset view cache"