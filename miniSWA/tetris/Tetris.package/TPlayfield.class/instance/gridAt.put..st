accessing
gridAt: aPoint put: anObject

	^ (self grid at: aPoint x + 1) at: aPoint y + 1 put: anObject