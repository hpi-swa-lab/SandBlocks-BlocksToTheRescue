accessing
code: anObject

	code := anObject.
	self changed.
	self changed: #code.
	^ true