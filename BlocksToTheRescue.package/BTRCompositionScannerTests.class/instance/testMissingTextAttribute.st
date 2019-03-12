testing
testMissingTextAttribute

	self text removeAttribute: self textAttribute from: 1 to: self text size.
	self 
		shouldnt: [self composeLine] 
		raise: Exception.
		