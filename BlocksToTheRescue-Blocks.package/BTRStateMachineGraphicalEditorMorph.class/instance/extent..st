geometry
extent: aPoint

	super extent: aPoint.
	self isInEditor ifFalse: [self update: #viewData].