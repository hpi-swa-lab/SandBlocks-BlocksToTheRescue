copying
postCopy

	self rows: self rows copy.
	self copyColumns.
	self notifyCells.
	^ super postCopy
	