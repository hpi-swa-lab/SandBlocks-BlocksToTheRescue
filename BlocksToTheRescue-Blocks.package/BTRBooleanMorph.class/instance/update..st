updating
update: aSymbol

	aSymbol = #state ifTrue: [
		self color: (self colorFor: blockModel isSet)].
	super update: aSymbol.