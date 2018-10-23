as yet unclassified
dispatch: aSEvent for: anObject

	((self list at: aSEvent class ifAbsent: [{}]) includes: anObject)
		ifTrue: [aSEvent dispatchOn: anObject]