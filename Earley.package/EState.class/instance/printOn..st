printing
printOn: aStream

	aStream
		nextPut: $(;
		nextPutAll: self ruleNumber asString;
		space;
		nextPutAll: self start asString;
		space;
		nextPutAll: self next asString;
		nextPut: $)