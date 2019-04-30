accessing
greeting: anObject

	greeting := anObject.
	self blockModel ifNotNil: [self blockModel value: anObject]