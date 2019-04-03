as yet unclassified
specialConstructionFor: anObject

	self halt.
	^ String streamContents: [:aStream | aStream store: anObject]