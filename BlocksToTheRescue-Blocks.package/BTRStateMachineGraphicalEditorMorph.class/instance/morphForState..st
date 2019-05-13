accessing
morphForState: aSymbolOrBTRState

	^ self stateMorphsDict at: (self stateFrom: aSymbolOrBTRState)