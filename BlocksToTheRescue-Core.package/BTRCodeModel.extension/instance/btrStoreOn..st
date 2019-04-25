*BlocksToTheRescue-Core
btrStoreOn: aWriteStream

	aWriteStream nextPutAll: (BTRSmartSerializer serialize: self).