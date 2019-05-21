copying
postCopy

	self breakDependents.
	self flag: #todo.
	self states: self states copy.
	
	^ super postCopy