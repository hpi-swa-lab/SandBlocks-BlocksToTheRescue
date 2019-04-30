instance creation
newFrom: anObject

	^ anObject isBTRBlockModel 
		ifTrue: [anObject]
		ifFalse: [
			(anObject isMorph and: [anObject attachedBlockModel notNil])
				ifTrue: [
					anObject abandon.
					anObject attachedBlockModel]
				ifFalse: [BTRConstantModel for: anObject]]