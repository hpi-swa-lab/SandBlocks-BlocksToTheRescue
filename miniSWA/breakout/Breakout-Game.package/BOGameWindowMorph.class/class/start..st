instance creation
start: sizeOption

	^ self new
		openInWorld;
		bounds: (Rectangle
			center: (self positionFor: sizeOption)
			extent: (self extentFor: sizeOption));
		yourself