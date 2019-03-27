*BlocksToTheRescue-Core
btrStoreOn: aWriteStream

	| imageStream |
	imageStream := WriteStream on: ByteArray new.
	PNGReadWriter putForm: self onStream: imageStream.
	
	aWriteStream nextPutAll: imageStream contents ascii85Encoded.