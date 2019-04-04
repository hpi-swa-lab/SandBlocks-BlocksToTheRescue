as yet unclassified
stringReferenceTo: anObject

	^ (self shouldBeSerializedAsLiteral: anObject)
		ifTrue: [| stream | anObject storeOn: (stream := BTRSmartStream on: self). stream contents.]
		ifFalse: [(self referenceDictionary includesKey: anObject) ifFalse: [self serialize: anObject].
			'(self referenceAt: ', (self referenceDictionary at: anObject), ')']