printing
printOn: aStream

	self information title printOn: aStream.
	aStream cr.
	self tiles withIndicesDo:
		[:tile :row :col |
		tile printOn: aStream.
		col = self colCount ifTrue: [aStream cr]].