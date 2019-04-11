as yet unclassified
btrStoreOn: aWriteStream

	aWriteStream nextPutAll: (BTRSmartSerializer serialize: self).