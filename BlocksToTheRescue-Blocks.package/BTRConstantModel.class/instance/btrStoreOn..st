serialization
btrStoreOn: aWriteStream
	
	super btrStoreOn: aWriteStream.
	self value btrWriteScanOn: aWriteStream.