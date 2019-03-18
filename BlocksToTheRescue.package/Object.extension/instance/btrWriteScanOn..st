*BlocksToTheRescue-Core
btrWriteScanOn: aWriteStream

	aWriteStream
		nextPutAll: self btrSerializationVersion;
		nextPut: $; .
	self btrStoreOn: aWriteStream.