fileIn/fileOut
writeScanOn: aStream

	| writeStream smartStream |
	aStream
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
	
	aStream nextPutAll: writeStream contents asByteArray ascii85Encoded.