testing
testMissingMorph

	self textAttribute blockModel: nil.
	self 
		shouldnt: [self composeLine] 
		raise: Exception.
		