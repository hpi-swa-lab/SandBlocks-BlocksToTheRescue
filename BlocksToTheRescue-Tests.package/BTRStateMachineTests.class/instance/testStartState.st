tests
testStartState

	self
		assert: self theMachine model startState
		equals: self theMachine state.