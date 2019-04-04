updating
update: aSymbol

	aSymbol = #state ifTrue: [
		self color: (self class colorFor: blockModel isSet)].
	super update: aSymbol.