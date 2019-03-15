fileIn/fileOut
writeScanOn: aStream
	
	| morphStream morphBinary |
	morphStream := MultiByteBinaryOrTextStream on: ''.
	self anchoredBlock allMorphsDo: [:each | each prepareToBeSaved].
	morphStream fileOutClass: nil andObject: self anchoredBlock.
	morphBinary := morphStream contents asByteArray base64Encoded.
	aStream
		nextPut: self class scanCharacter;
		nextPut: $#;
		nextPutAll: 'V1';
		nextPut: $; ;
		nextPutAll: morphBinary size printStringHex;
		nextPut: $; ;
		nextPutAll: morphBinary;
		nextPut: $; .
	