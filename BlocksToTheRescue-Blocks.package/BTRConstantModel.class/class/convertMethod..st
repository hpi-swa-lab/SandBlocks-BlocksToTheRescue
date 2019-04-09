instance creation
convertMethod: aMethod

	| methodValue |
	methodValue := [aMethod valueWithReceiver: nil arguments: {}] on: Error do: [nil].
	^ (self worksForObject: methodValue)
		ifFalse: [super convertMethod: aMethod]
		ifTrue: [self for: methodValue]