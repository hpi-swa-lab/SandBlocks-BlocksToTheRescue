as yet unclassified
storeOn: aStream

	aStream 
		nextPutAll: '(',self class name, ' basicNew ';
		nextPutAll: 'instVarNamed: #blockModel put: ';
		store: self blockModel;
		nextPutAll: '; yourself)'.
	