fileIn/fileOut
writeScanOn: aStream

	aStream 
		nextPut: self class scanCharacter; 
		nextPutAll: self anchoredBlock class asString; 
		nextPut: $;

	