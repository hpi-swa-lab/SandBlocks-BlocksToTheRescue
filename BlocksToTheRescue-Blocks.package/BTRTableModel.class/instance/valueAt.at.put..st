accessing - value
valueAt: rowIndex at: columnIndex put: anObject

	self value at: rowIndex at: columnIndex put: anObject.
	self changed: #value.
	self	changed.