printing
printOn: aStream

	aStream
		nextPut: $(;
		nextPutAll: self ruleNumber asString;
		space;
		nextPutAll: self end asString;
		nextPut: $)