as yet unclassified
filterEvent: aSEventClass for: anObject

	self list 
		at: aSEventClass 
		ifPresent: [:element | element add: anObject ] 
		ifAbsentPut: [OrderedCollection with: anObject]
		