testing
testMissingMorph

	self textAttribute anchoredBlock: nil.
	self 
		shouldnt: [self composeLine] 
		raise: Exception.
		