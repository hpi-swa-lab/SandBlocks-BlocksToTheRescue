accessing
value: anObject

	value := anObject.
	self changed: #value. "For toolBuilder compliance"
	self changed.