instance creation
newFrom: anObject

	^ (anObject isKindOf: self)
		ifTrue: [anObject]
		ifFalse: [self forObject: anObject]