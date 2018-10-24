accessing
gridAt: aPoint putUnchecked: anObject

	(self grid at: aPoint x + 1) at: aPoint y + 1 put: anObject.
	self changed.