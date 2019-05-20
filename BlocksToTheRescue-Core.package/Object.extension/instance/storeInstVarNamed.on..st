*BlocksToTheRescue-Core
storeInstVarNamed: aString on: aStream

	aStream nextPutAll: ' instVarNamed: #';
		nextPutAll: aString;
		nextPutAll: ' put: ';
		store: (self instVarNamed: aString);
		nextPut: $; ;
		nextPut: Character cr