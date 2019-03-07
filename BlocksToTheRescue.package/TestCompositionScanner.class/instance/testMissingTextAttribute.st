testing
testMissingTextAttribute

	self text removeAttribute: self textAttribute.
	self 
		shouldnt: [self composeLine] 
		raise: Exception.
		