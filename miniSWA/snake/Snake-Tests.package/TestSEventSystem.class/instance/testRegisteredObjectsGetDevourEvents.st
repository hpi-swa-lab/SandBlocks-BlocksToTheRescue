as yet unclassified
testRegisteredObjectsGetDevourEvents

	self registerObjectForEventTypeAndDispatchIt: SDevourEvent.
	self assert: self object devourEvent equals: 1.
	
	