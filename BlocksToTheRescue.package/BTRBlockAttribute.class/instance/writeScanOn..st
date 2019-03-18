fileIn/fileOut
writeScanOn: aStream

	| objectStream |
	objectStream := WriteStream on: ''.
	self anchoredBlock btrWriteScanOn: objectStream.

	aStream
		nextPut: self class scanCharacter;
		nextPut: $#;
		nextPutAll: self serializationVersion;
		nextPut: $; ;
		nextPutAll: self anchoredBlock className;
		nextPut: $; ;
		nextPutAll: objectStream size printStringHex;
		nextPut: $; ;
		nextPutAll: objectStream contents;
		nextPut: $; .