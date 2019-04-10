instance creation
forObject: anObject

	^ anObject isBTRBlockModel 
		ifTrue: [anObject]
		ifFalse: 
			[(Smalltalk at: #BTRConstantModel 
				ifPresent: [:model | model for: anObject])
				ifNil: [self error: 'Cannot convert "', anObject, '" into a BTRBlockModel']].