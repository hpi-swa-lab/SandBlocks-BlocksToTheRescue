accessing
gridAt: aPoint put: anObject

	self gridAt: aPoint putUnchecked: anObject.
	self removeFullRows.