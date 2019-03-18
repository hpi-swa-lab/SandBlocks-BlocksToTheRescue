tests
testSaveHasNoEdits

	self makeChange.
	self editor accept.
	self deny: self editor shouldSaveEdits.