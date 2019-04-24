printing
serializeOn: aWriteStream

	aWriteStream
		store: self name;
		nextPutAll: ' -> '.
	self action ifNotNil: [aWriteStream nextPut: $(].
	aWriteStream
		store: self targetStateName.
	self action 
		ifNotNil: [
			aWriteStream
				nextPutAll: ' -> ';
				store: self action;
				nextPut: $)].
		