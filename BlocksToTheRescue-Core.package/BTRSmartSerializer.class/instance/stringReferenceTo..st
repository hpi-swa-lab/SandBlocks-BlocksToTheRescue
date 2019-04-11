as yet unclassified
stringReferenceTo: anObject

	^ (self shouldBeSerializedAsLiteral: anObject)
		ifTrue: [ self constructionFor: anObject]
		ifFalse: [(self referenceDictionary includesKey: anObject) ifFalse: [self serialize: anObject].
			'(self referenceAt: ', (self referenceDictionary at: anObject), ')']