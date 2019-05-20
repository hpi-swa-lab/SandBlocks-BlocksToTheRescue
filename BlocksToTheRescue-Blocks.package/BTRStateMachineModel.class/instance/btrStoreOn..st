serialization
btrStoreOn: aWriteStream

	super btrStoreOn: aWriteStream.
	self serializeOn: aWriteStream.