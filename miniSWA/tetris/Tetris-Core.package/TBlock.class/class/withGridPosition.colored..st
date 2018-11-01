instance creation
withGridPosition: aPoint colored: aColor

	^ TBlock new
		gridPosition: aPoint;
		color: aColor;
		yourself