as yet unclassified
fullSerialize: anObject
	
	self serialize: anObject.
	^ String streamContents: [:aStream |
		self constructions do: [:each | aStream nextPutAll: each, '. ', Character cr].
		aStream nextPutAll: 'self referenceDictionary at: ', 1]