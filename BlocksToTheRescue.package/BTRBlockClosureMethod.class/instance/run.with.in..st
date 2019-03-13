evaluating
run: aSelector with: anArrayOfObjects in: aReceiver

	[self blockClosure outerContext receiver: aReceiver.
	^ self blockClosure valueWithArguments: anArrayOfObjects.] 
		ensure: [self blockClosure outerContext receiver: nil.]
	