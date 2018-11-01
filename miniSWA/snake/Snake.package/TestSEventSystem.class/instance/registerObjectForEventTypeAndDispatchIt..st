as yet unclassified
registerObjectForEventTypeAndDispatchIt: aSEventClass

	self registerObjectForEventType: aSEventClass.
	self dispatchEventOfType: aSEventClass.