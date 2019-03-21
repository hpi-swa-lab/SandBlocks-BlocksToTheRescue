accessing
refreshShownImage

	shownImage := self image
		ifNil: [nil]
		ifNotNil: [self image scaledToSize: self innerBounds extent].