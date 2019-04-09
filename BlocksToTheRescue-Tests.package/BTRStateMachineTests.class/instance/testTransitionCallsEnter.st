tests
testTransitionCallsEnter

	self theMachine currentState: (self theMachine model stateNamed: #enterListenerStartState).
	self assert: [[self theMachine transition: #transition. false]
		on: Notification
		do: [ :enterNot | (enterNot messageText at: #transition) = #enter]].