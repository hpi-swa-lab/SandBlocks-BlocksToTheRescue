fileIn/out
btrStoreOn: aWriteStream

	| imageStream |
	imageStream := WriteStream on: ByteArray new.
	PNGReadWriter putForm: self image onStream: imageStream.
	
	aWriteStream
		nextPutAll: self width asString;
		nextPut: $@ ;
		nextPutAll: self height asString;
		nextPut: $; ;
		nextPutAll: imageStream contents ascii85Encoded.