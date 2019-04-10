printing
storeOn: aStream

	aStream nextPut: $(.
	aStream nextPutAll: self class name, ' basicNew'.
	self class allInstVarNames 
		do: [:variableName |
			aStream
				nextPutAll: ' instVarNamed: #';
				nextPutAll: variableName;
				nextPutAll: ' put: ';
				store: (self instVarNamed: variableName);
				nextPut: $; ;
				nextPut: Character cr].
	aStream nextPutAll: ' yourself)'