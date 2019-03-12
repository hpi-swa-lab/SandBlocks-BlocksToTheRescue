tests
testSaveSetsValue

	| value |
	value := Color green.
	self deny: value = self method value.
	self editor value: value.
	self editor accept.
	self 
		assert: value
		equals: self method value.