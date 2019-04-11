printing
printOn: aStream

	aStream
		nextPutAll: 'State[';
		nextPutAll: self decoratedName;
		nextPutAll: ']'.