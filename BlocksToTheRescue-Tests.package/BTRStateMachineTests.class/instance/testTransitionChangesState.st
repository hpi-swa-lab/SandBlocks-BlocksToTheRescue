tests
testTransitionChangesState

	self theMachine currentState: (self theMachine model stateNamed: #start).
	self theMachine transition: #foo.
	self
		assert: self theMachine currentState
		equals: (self theMachine model stateNamed: #b).