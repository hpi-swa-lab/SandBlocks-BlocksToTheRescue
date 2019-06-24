fileIn/fileOut
writeScanOn: aWriteStream

	| writeStream smartStream |
	aWriteStream
		nextPut: self class scanCharacter;
		nextPut: $#;
		nextPutAll: self serializationVersion;
		nextPut: $; .
		
	writeStream := MultiByteBinaryOrTextStream with: ''.
	"writeStream binary."
	smartStream := SmartRefStream on: writeStream.
	smartStream
		nextPutObjOnly: self blockModel;
		close.
	
	aWriteStream nextPutAll: writeStream contents asByteArray ascii85Encoded.