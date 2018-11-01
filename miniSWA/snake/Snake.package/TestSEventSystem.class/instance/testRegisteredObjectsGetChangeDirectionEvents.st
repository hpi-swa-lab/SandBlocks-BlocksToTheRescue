as yet unclassified
testRegisteredObjectsGetChangeDirectionEvents

	self registerObjectForEventTypeAndDispatchIt: SChangeDirectionEvent.
	self assert: self object changeDirectionEvent equals: 1.
	
	