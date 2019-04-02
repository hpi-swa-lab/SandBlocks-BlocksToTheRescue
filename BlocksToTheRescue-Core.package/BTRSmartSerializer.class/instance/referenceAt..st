as yet unclassified
referenceAt: anId

	^ self referenceDictionary at: anId
		ifAbsentPut: [self toResolve add: (BTRSmartReference new id: anId)]