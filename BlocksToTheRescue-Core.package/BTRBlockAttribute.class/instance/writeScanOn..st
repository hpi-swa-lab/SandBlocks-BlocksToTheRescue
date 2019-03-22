fileIn/fileOut
writeScanOn: aStream

	| objectStream |
	objectStream := WriteStream on: ''.
	self blockModel btrWriteScanOn: objectStream.

	aStream
		nextPut: self class scanCharacter;
		nextPut: $#;
		nextPutAll: self serializationVersion;
		nextPut: $; ;
		nextPutAll: self blockModel className;
		nextPut: $; ;
		nextPutAll: objectStream size printStringHex;
		nextPut: $; ;
		nextPutAll: objectStream contents;
		nextPut: $; .