geometry
extent: aPoint

	super extent: aPoint.
	self imageMorph ifNotNil: [
		self imageMorph bounds: self innerBounds].