*BlocksToTheRescue-Core
storeSubmorphsOn: aStream

	aStream nextPutAll: 'instVarNamed: #submorphs put: Array empty;', Character cr.
		self submorphs withIndexDo:
			[:each :index | aStream 
				nextPutAll: ' privateAddMorph: ';
				store: each;
				nextPutAll: 'atIndex: ', index, ';', Character cr]