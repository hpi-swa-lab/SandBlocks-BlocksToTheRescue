drawing
drawOn: aCanvas

	super drawOn: aCanvas.
	self image ifNotNil: [self image isTranslucent
		ifTrue: [aCanvas translucentImage: self shownImage at: self imageOrigin]
		ifFalse: [aCanvas drawImage: self shownImage at: self imageOrigin]].