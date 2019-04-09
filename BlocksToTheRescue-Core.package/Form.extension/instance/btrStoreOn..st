*BlocksToTheRescue-Core
btrStoreOn: aWriteStream

	| imageStream |
	imageStream := WriteStream on: ByteArray new.
	(PNGReadWriter on: imageStream) nextPutImage: self; close.
	
	aWriteStream nextPutAll: imageStream contents ascii85Encoded.