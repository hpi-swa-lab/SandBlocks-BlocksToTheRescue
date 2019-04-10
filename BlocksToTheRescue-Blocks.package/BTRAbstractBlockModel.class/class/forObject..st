instance creation
forObject: anObject

	^ anObject isBTRBlockModel 
		ifTrue: [anObject]
		ifFalse: [BTRConstantModel for: anObject].