utils
distanceOf: aPoint in: aRectangle on: aSide

	^ ((aRectangle perform: aSide)
		- (self coordinateFrom: aPoint
			on: (self axisFrom: aSide))) abs