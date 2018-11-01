as yet unclassified
testRegisteredObjectsGetOnlyEventsTheyRegisteredFor

	self registerObjectForEventType: SDieEvent.
	self registerObjectForEventType: SDevourEvent.
	self registerObjectForEventType: SChangeDirectionEvent.
	
	self dispatchEventOfType: SChangeDirectionEvent.
	self assert: self object changeDirectionEvent equals: 1.
	self assert: self object devourEvent equals: 0.
	self assert: self object dieEvent equals: 0.
	
	self dispatchEventOfType: SDevourEvent.
	self assert: self object changeDirectionEvent equals: 1.
	self assert: self object devourEvent equals: 1.
	self assert: self object dieEvent equals: 0.
	
	self dispatchEventOfType: SDieEvent.
	self assert: self object changeDirectionEvent equals: 1.
	self assert: self object devourEvent equals: 1.
	self assert: self object dieEvent equals: 1.