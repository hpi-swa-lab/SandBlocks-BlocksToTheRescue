accessing
morphForState: aSymbolOrBTRState ifPresent: aBlockClosure

	^ ([self stateMorphsDict at: (self stateFrom: aSymbolOrBTRState)]
		on: Exception do: [^ self])
		in: aBlockClosure