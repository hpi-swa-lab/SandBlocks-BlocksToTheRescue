accessing
morphForState: aSymbolOrBTRState ifPresent: aBlockClosure

	^ self stateMorphsDict at: (self stateFrom: aSymbolOrBTRState) ifPresent: aBlockClosure