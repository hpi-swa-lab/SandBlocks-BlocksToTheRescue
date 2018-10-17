instance creation
newAt: aPoint colored: aColor

	^ (self newAt: aPoint)
		color: aColor;
		yourself