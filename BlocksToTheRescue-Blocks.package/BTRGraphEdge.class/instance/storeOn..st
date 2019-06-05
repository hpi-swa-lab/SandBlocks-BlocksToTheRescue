accessing
storeOn: aStream

	aStream nextPut: $(.
	super storeOn: aStream.
	aStream nextPutAll: ' valueName: '.
	aStream store: self valueName.
	aStream nextPut: $).