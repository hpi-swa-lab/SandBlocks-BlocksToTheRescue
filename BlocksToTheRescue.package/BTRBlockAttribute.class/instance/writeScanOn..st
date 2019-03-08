fileIn/fileOut
writeScanOn: aStream
	
	| morphStream |
	morphStream := MultiByteBinaryOrTextStream on: ''.
	self anchoredBlock allMorphsDo: [:each | each prepareToBeSaved].
	morphStream fileOutClass: nil andObject: self anchoredBlock.
	aStream
		nextPut: self class scanCharacter;
		nextPutAll: morphStream position asString;
		nextPut: $; ;
		nextPutAll: morphStream contents;
		nextPut: $; .
		
	