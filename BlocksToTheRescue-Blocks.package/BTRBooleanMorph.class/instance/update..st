updating
update: aSymbol

	aSymbol = #state ifTrue: [
		self label: (self labelFor: self model isSet).
		self color: (self colorFor: self model isSet)].
	super update: aSymbol.