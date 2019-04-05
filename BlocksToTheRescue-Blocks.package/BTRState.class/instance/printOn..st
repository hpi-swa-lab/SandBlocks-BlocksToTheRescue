printing
printOn: aStream

	aStream
		nextPutAll: 'State[';
		nextPutAll: self name;
		nextPutAll: ']'.