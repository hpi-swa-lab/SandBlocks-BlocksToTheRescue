tests
testChangesAreDetected

	self editor value: Color green.
	self assert: self editor hasUnacceptedEdits.