accessing
value: anObject

	"the creation of this model requires ignoring nil cases before initialization"
	(self readOnlyCollection isNil and: [anObject isNil]) ifTrue: [^ self].
	
	(self readOnlyCollection includes: anObject)
		ifFalse: [self error: 'Object ', anObject, ' not in our collection.'].
	super value: anObject.