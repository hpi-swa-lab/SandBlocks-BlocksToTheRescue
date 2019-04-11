initialization
initializeText

	self cellModel value
		ifNotNil: [self contents: self cellModel value asString]
		ifNil: [self contents: ''].