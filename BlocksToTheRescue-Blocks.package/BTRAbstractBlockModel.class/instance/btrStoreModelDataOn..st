fileIn/out
btrStoreModelDataOn: aWriteStream

	self modelData
		ifNotEmpty: [aWriteStream nextPutAll: #modelData: .
			self modelData btrWriteScanOn: aWriteStream].