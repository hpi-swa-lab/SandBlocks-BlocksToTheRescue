as yet unclassified
stringReferenceTo: anObject

	^ anObject isLiteral
		ifTrue: [anObject storeString]
		ifFalse: [(self referenceDictionary includesKey: anObject) ifFalse: [self serialize: anObject].
			'(self referenceAt: ', (self referenceDictionary at: anObject), ')']