initialize-release
addParamsTo: aSymbol

	aSymbol last = $: ifFalse: [^ aSymbol].
	^ String streamContents: [:result | 
		aSymbol keywords withIndexDo: 
			[:each :index | result 
				nextPutAll: each;
				nextPut: Character space;
				nextPut: (Character alphabet at: index);
				nextPut: Character space]]