copying
postCopy

	self transitions: self transitions copy.
	self breakDependents.
	^ super postCopy