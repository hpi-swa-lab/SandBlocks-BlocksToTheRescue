accessing
boundsFor: sizeOption

	^ Rectangle
			center: (self positionFor: sizeOption)
			extent: (self extentFor: sizeOption)