tests
testStartState

	self
		assert: self theMachine state
		equals: self theMachine model startState.