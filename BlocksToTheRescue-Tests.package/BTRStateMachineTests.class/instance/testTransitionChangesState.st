tests
testTransitionChangesState

	self theMachine currentState: (self theMachine model stateNamed: #start).
	self theMachine transition: #foo.
	self
		assert: (self theMachine model stateNamed: #someTargetNode)
		equals: self theMachine currentState.