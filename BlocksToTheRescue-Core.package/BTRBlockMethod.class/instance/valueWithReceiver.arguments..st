evaluating
valueWithReceiver: anObject arguments: anArrayOfObjects

	| parameterContext |
	parameterContext := BTRParameterContext new 
			sender: thisContext sender;
			arguments: anArrayOfObjects;
			tempNames: self parameterNames.
	^ self blockModel valueInContext: parameterContext