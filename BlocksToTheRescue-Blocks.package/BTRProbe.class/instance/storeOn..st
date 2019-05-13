as yet unclassified
storeOn: aStream

	aStream 
		nextPutAll: '(',self class name, ' new ';
		nextPutAll: 'instVarNamed: #code put: ';
		store: self code;
		nextPutAll: '; yourself)'.
	