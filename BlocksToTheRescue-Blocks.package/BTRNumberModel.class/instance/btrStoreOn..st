serialization
btrStoreOn: aWriteStream

	self value btrWriteScanOn: aWriteStream.
	self minimumValue btrWriteScanOn: aWriteStream.
	self maximumValue btrWriteScanOn: aWriteStream.
	self quantum btrWriteScanOn: aWriteStream.