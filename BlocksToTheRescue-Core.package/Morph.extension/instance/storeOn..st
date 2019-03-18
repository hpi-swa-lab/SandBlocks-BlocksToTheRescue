*BlocksToTheRescue-Core
storeOn: aStream

	aStream nextPut: $(.
	aStream nextPutAll: self class name, ' basicNew'.
	self class allInstVarNames do:
		[:variableName |
		variableName caseOf: {
			['owner'] -> [].
			['submorphs'] -> 
				[aStream nextPutAll: 'instVarNamed: #submorphs put: Array empty;', Character cr.
				self submorphs withIndexDo:
					[:each :index | aStream 
						nextPutAll: ' privateAddMorph: ';
						store: each;
						nextPutAll: 'atIndex: ', index, ';', Character cr]]
		} otherwise: 
		[aStream nextPutAll: ' instVarNamed: #';
			nextPutAll: variableName;
			nextPutAll: ' put: ';
			store: (self instVarNamed: variableName);
			nextPut: $; ;
			nextPut: Character cr]].
		
		
	aStream nextPutAll: ' yourself)'