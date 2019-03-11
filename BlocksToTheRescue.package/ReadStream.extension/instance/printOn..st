*BlocksToTheRescue
printOn: aStream
 
	aStream nextPutAll: 'aReadStream '.
	collection printOn: aStream.