drawing
drawOn: aCanvas

	self drawBorderOn: aCanvas.
	(self color isTransparent and: [self tileColor isTransparent])
		ifFalse: [self drawTilesOn: aCanvas].