printing
printOn: aStream

	aStream 
		nextPutAll: 'Node on: ';
		nextPutAll: self block class name.