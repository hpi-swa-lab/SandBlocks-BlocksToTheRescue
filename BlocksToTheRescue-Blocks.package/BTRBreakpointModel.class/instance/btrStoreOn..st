serialization
btrStoreOn: aWriteStream

	aWriteStream nextPutAll: (self once asBit << 1 + self enabled asBit) asString.