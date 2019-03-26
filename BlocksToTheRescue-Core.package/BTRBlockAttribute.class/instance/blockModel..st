accessing
blockModel: anObject

	blockModel := anObject isBTRBlockModel 
		ifTrue: [anObject]
		ifFalse: [(Smalltalk at: #BTRConstantModel ifPresent: [:model | model for: anObject])
			ifNil: [self error: 'Cannot convert "', anObject, '" into a BTRBlockModel']].
	anchoredMorph := nil. "Reset view cache"