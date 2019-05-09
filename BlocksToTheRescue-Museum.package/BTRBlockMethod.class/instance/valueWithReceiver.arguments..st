evaluating
valueWithReceiver: anObject arguments: anArrayOfObjects

	| parameterContext |
	parameterContext := BTRParameterContext new 
		sender: thisContext sender;
		receiver: anObject;
		arguments: anArrayOfObjects;
		tempNames: self parameterNames.
	^ self blockModel valueInContext: parameterContext