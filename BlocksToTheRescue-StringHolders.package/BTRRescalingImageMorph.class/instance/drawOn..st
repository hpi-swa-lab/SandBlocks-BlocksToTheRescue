as yet unclassified
drawOn: aCanvas

	super drawOn: aCanvas.
	self image ifNotNil: [self image isTranslucent
		ifTrue: [aCanvas translucentImage: self image at: self innerBounds origin]
		ifFalse: [aCanvas drawImage: self image at: self innerBounds origin]].