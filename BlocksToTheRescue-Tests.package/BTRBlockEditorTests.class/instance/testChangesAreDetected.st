tests
testChangesAreDetected

	self makeChange.
	self assert: self editor hasUnacceptedEdits.