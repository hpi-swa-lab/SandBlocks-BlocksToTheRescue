as yet unclassified
serialize: anObject

	| id |
	id := self referenceDictionary 
		at: anObject 
		ifAbsentPut: self nextId.
	anObject isLiteral ifFalse: 
		[self constructions at: id ifAbsentPut: ['self referenceDictionary at: ', id, ' put: ', (self constructionFor: anObject)].].
