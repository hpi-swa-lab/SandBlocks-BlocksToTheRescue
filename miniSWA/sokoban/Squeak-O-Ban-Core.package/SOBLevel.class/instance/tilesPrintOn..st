printing
tilesPrintOn: aStream

	self tiles withIndicesDo:
		[:tile :row :col |
		tile printOn: aStream.
		col = self colCount ifTrue: [aStream cr]].