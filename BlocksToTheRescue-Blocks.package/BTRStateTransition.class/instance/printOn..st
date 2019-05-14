printing
printOn: aStream

	aStream
		nextPutAll: 'Transition[';
		nextPutAll: self name;
		nextPutAll: ']'.