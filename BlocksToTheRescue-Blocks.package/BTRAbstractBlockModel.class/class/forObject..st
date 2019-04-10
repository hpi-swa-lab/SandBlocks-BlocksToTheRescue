instance creation
forObject: anObject

	anObject ifNil: [^ self new].
	^ anObject isBTRBlockModel 
		ifTrue: [anObject]
		ifFalse: 
			[BTRConstantModel for: anObject].