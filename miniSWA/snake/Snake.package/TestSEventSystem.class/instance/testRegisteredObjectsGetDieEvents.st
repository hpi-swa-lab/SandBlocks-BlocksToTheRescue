as yet unclassified
testRegisteredObjectsGetDieEvents

	self registerObjectForEventTypeAndDispatchIt: SDieEvent.
	self assert: self object dieEvent equals: 1.
	
	