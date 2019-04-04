as yet unclassified
serialize: anObject

	| id |
	id := self referenceDictionary 
		at: anObject 
		ifAbsentPut: self nextId.
	(self shouldBeSerializedAsLiteral: anObject) ifFalse: 
		[self constructions at: id ifAbsentPut: ['self referenceDictionary at: ', id, ' put: ', (self constructionFor: anObject)].].
