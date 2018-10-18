accessing
position: aPoint

	(self gameField bounds containsPoint: aPoint)
		ifTrue: [self morph center: aPoint].