printing
btrStoreOn: aWriteStream

	aWriteStream nextPutAll: (BTRSmartSerializer serialize: self).