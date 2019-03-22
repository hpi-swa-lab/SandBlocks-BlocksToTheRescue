fileIn/fileOut
writeScanOn: aStream

	aStream
		nextPut: self class scanCharacter;
		nextPut: $#;
		nextPutAll: self serializationVersion;
		nextPut: $; .
		
	self blockModel btrWriteScanOn: aStream.