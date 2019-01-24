event handling
handleDroppedItem: anItem event: anEvent

	(self isImageStream: anItem)
		ifTrue: [self handleDroppedImage: anItem event: anEvent]