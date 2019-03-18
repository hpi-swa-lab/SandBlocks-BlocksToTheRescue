event handling
handleDroppedImage: aFileStream event: anEvent

	self removeAllMorphs.
	self image: (self formFrom: aFileStream).