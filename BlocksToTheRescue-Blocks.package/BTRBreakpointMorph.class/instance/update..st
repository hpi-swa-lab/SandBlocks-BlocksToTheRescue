updating
update: aSymbol

	aSymbol = #enabled
		ifTrue: [^ self updateEnabledIcon].
	aSymbol = #once
		ifTrue: [^ self updateOnceIcon].
	super update: aSymbol.