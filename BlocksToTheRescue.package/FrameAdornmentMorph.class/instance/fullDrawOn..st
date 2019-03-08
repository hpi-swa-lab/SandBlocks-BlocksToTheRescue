as yet unclassified
fullDrawOn: aCanvas

	self position: self owner topRight.
	self hasUnacceptedEdits ifTrue: [self drawFrameAdornmentOn: aCanvas].