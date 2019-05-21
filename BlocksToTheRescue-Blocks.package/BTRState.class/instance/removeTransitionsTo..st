accessing
removeTransitionsTo: aSymbol

	self transitions removeAllSuchThat: [:each | each targetStateName = aSymbol].