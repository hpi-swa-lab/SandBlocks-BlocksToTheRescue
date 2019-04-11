as yet unclassified
specialConstructionFor: anObject

	^ self 
		perform: ('store', anObject class, ':') asSymbol 
		with: anObject.
	"self halt.
	^ String streamContents: [:aStream | aStream store: anObject]"