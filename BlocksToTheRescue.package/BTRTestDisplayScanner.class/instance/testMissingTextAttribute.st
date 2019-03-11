testing
testMissingTextAttribute

	self text removeAttribute: self textAttribute from: 1 to: self text size.
	self composeLine.
	self 
		shouldnt: [self scanner displayLine: self line offset: 0 @ 0 leftInRun: 0]
		raise: Exception.