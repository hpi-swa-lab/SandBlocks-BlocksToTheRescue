*BlocksToTheRescue-Core
btrWriteScanOn: aWriteStream

	|objectStream|
	objectStream := WriteStream on: ''.

	(self isBTRBlockModel and: [self cachedStoreString isNil not])
		ifTrue: [objectStream nextPutAll: self cachedStoreString]
		ifFalse: [
			objectStream
				nextPutAll: self btrSerializationVersion;
				nextPut: $; .
			self btrStoreOn: objectStream].
	
	self isBTRBlockModel
		ifTrue: [self cachedStoreString: objectStream contents].
	
	aWriteStream
		nextPutAll: self className;
		nextPut: $; ;
		nextPutAll: objectStream size printStringHex;
		nextPut: $; ;
		nextPutAll: objectStream contents;
		nextPut: $; .