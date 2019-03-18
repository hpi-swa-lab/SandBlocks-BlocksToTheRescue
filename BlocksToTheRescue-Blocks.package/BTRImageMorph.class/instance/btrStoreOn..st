fileIn/out
btrStoreOn: aWriteStream

	| imageStream |
	imageStream := WriteStream on: ByteArray new.
	PNGReadWriter putForm: self image onStream: imageStream.
	
	aWriteStream nextPutAll: imageStream contents ascii85Encoded.