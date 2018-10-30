printing
printOn: aStream

	aStream nextPut: $[.
	self ownEntity printOn: aStream.
	aStream nextPut: ${.
	self ownData printOn: aStream.
	aStream nextPut: $}.
	aStream nextPutAll: '<->'.
	self othersEntity printOn: aStream.
	aStream nextPut: ${.
	self othersData printOn: aStream.
	aStream nextPut: $}.
	aStream nextPutAll: '::'.
	self hasCollided printOn: aStream.
	aStream nextPut: ${.
	self data printOn: aStream.
	aStream nextPut: $}.
	aStream nextPut: $].