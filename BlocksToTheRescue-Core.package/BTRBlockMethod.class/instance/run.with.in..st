evaluating
run: aSelector with: anArrayOfObjects in: aReceiver

	| context |
	context := BTRParameterContext new
		sender: thisContext sender;
		arguments: anArrayOfObjects;
		tempNames: self parameterNames.
	^ self blockModel valueInContext: context