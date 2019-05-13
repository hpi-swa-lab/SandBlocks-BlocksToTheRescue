as yet unclassified
storeOn: aStream

	aStream 
		nextPutAll: '(',self class name, ' basicNew ';
		nextPutAll: 'instVarNamed: #code put: ';
		store: self code;
		nextPutAll: '; yourself)'.
	