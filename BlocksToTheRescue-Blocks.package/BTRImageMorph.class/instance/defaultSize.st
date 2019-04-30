accessing
defaultSize

	^ self image
		ifNotNil: [:image | image extent]
		ifNil: [super defaultSize * 2]