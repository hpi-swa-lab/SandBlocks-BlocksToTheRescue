evaluating
valueWithReceiver: aReceiver arguments: anArrayOfObjects

	[self blockClosure outerContext receiver: aReceiver.
	^ self blockClosure valueWithArguments: anArrayOfObjects.] 
		ensure: [self blockClosure outerContext receiver: nil.]
	