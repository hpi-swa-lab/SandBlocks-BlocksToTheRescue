accessing
storeOn: aStream
	
	aStream 
		nextPutAll: '(',self class name, ' new ';
		nextPutAll: 'instVarNamed: #code put: ';
		store: self view text;
		nextPutAll: '; yourself)'.
	
