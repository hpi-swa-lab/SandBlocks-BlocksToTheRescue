fileIn/fileOut
writeScanOn: aStream
	
	| morphStream morphBinary |
	morphStream := MultiByteBinaryOrTextStream on: ''.
	self anchoredBlock allMorphsDo: [:each | each prepareToBeSaved].
	morphStream fileOutClass: nil andObject: self anchoredBlock.
	morphBinary := morphStream contents asByteArray fullPrintString.
	aStream
		nextPut: self class scanCharacter;
		nextPutAll: morphBinary size asString;
		nextPut: $; ;
		nextPutAll: morphBinary;
		nextPut: $; .
		
	