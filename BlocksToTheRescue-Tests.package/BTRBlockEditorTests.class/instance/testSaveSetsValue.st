tests
testSaveSetsValue

	self deny: self newValue = self method value.
	self makeChange.
	self editor accept.
	self 
		assert: self newValue
		equals: self blockModel value.