accessing
storeOn: aStream
	
	aStream 
		nextPutAll: '(',self class name, ' basicNew ';
		nextPutAll: 'instVarNamed: #code put: ';
		store: self view text;
		nextPutAll: '; yourself)'.
	