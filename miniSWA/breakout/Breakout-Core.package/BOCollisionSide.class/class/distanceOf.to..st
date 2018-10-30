accessing
distanceOf: aPoint to: aRectangle

	^ ((self sideCoordinateOf: aRectangle)
		- (self coordinateOf: aPoint)) abs