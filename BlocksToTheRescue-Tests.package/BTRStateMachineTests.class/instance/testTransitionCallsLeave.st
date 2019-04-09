tests
testTransitionCallsLeave

	self theMachine currentState: (self theMachine model stateNamed: #leaveListenerState).
	self assert: [[self theMachine transition: #transition. false]
		on: Notification
		do: [ :enterNot | (enterNot messageText at: #transition) = #leave]].