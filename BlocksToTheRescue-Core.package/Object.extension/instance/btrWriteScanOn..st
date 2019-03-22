*BlocksToTheRescue-Core
btrWriteScanOn: aWriteStream

	|objectStream|
	objectStream := WriteStream on: ''.

	objectStream
		nextPutAll: self btrSerializationVersion;
		nextPut: $; .
	self btrStoreOn: objectStream.
	aWriteStream
		nextPutAll: self className;
		nextPut: $; ;
		nextPutAll: objectStream size printStringHex;
		nextPut: $; ;
		nextPutAll: objectStream contents;
		nextPut: $; .