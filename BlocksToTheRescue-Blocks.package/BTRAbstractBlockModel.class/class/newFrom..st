instance creation
newFrom: anObject

	^ anObject isBTRBlockModel 
		ifTrue: [anObject]
		ifFalse: [
			(anObject isMorph and: [anObject hasProperty: #BTRBlockModel])
				ifTrue: [
					anObject abandon.
					anObject valueOfProperty: #BTRBlockModel]
				ifFalse: [BTRConstantModel for: anObject]]