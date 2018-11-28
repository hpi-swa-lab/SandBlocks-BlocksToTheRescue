printing
printOn: aStream

	self information title printOn: aStream.
	aStream cr.
	self tilesPrintOn: aStream.